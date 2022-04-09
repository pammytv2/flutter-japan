import 'package:flutter/material.dart';

class tanPage extends StatelessWidget {
  const tanPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "ติดต่อเรา",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
       body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Image.asset(
              'images/ma.png',
              height: 200,
            )),
            SizedBox(
              height: 20,
            ),
            Text(
              'If you need help \n feel free to contact us',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(

                    decoration: BoxDecoration(
                        color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                        )
                      ]
                    ),
                    height: 100,
                    width: 150,

                    //color: Colors.white,
                    child: Column(
                      children: [
                        Icon(Icons.alternate_email, color: Color.fromARGB(255, 51, 51, 51), size: 50,),
                        Text('Pammytv.42 \n@gmail.com ', textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                        )
                      ]
                    ),
                    height: 100,
                    width: 150,
                    // color: Colors.white,
                    child: Column(
                      children: [
                        Icon(Icons.help, color: Color.fromARGB(255, 51, 51, 51), size: 50,),
                        Text('FAQs'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                        )
                      ]
                    ),
                    height: 100,
                    width: 150,
                    // color: Colors.white,
                    child: Column(
                      children: [
                        Icon(Icons.phone, color: Color.fromARGB(255, 51, 51, 51), size: 50,),
                        Text('Tel xxxxxxxxxx '),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                        )
                      ]
                    ),
                    //color: Colors.white,
                    child: Column(
                      children: [
                        Icon(Icons.school_rounded, color: Color.fromARGB(255, 51, 51, 51), size: 50,),
                        Text('computer engineering '),
                      ],
                    ),
                  ),
                ),
              ],

            ),
          ],

       
      
       ),
    );
  }
}