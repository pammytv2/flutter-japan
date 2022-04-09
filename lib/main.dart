import 'dart:math';

import 'package:flutter/material.dart';
import 'package:layout/pages/contact.dart';
import 'package:layout/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Japan Travel APP",
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final muen = [HomePage(), tanPage(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: muen[_currentIndex] ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
             BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: " Home",),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail,color: Colors.black,),label: "Contact"),
             
          ],
          onTap: (index){
            setState(() {
              print(index); 
              _currentIndex = index;
            });
          }
        ),

      
    );
  }
}


