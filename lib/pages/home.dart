import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("5เมืองในประเทศญี่ปุน"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: FutureBuilder( builder: (context, snapshot) {
              var data = json.decode(snapshot.data.toString()); // [{คอมพิวเตอร์คืออะไร...},{},{},{}]
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                    return MyBox(data[index]['title'], data[index]['subtitle'], data[index]['image_url'],data[index]['detail']);
                
                },
                itemCount: data.length, );

          },
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),


          )
        ));
  }

  Widget MyBox(String title, String subtitle, String image_url, String detail) {
    var v1,v2,v3,v4;
    v1 = title;
    v2 = subtitle;
    v3 = image_url;
    v4 = detail;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      //color: Colors.blue[50],
      height: 200,
      decoration: BoxDecoration(
          // color: Colors.blue[50],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(
                  image_url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.50), BlendMode.darken))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(height: 18),
          TextButton(onPressed: () {
              print("Next Page >>>");
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(v1,v2,v3,v4)));

          }, child: Text("อ่านต่อ"))
        ],
      ),
    );
  }
}
