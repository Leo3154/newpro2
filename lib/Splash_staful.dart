import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: splashstate(),);
    }
  ));
}

class splashstate extends StatefulWidget{
  @override
  State<splashstate> createState() => _splashstateState();
}

class _splashstateState extends State<splashstate> {
  @override
  void initState() {
   Timer(Duration(seconds: 4), () {
     Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));
     
   });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image:  AssetImage("Assets/Image/back1.jpeg"),fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 320),
          child: Column(
            children: [
              Icon(Icons.ac_unit_sharp,color: Colors.cyan,size: 100,),
              Text("FROSTY...",style: TextStyle(color: Colors.cyan,fontSize: 50),),
            ],
          ),
        ),

      ),
    );
  }
}