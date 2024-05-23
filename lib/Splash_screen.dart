import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( width: double.infinity,
        decoration: BoxDecoration(

          image: DecorationImage(image: AssetImage("Assets/Image/back1.jpeg"),fit: BoxFit.fill)

        //     gradient: LinearGradient(
        //   colors: [Colors.blueGrey, Colors.white, Colors.cyan],
        //   begin: Alignment.bottomCenter,
        //   end: Alignment.topRight,
        // )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.facebook_sharp, color: Colors.blue[900],size: 150,),

            Image(image: AssetImage("Assets/Image/Personwlap.jpeg")),
            Text("PERSONAL LAP", style: TextStyle(fontSize: 18,color: Colors.white),),

            // Padding(
            //   padding: const EdgeInsets.only(top: 140,right: 500),
            //   child: Text("WELCOME", style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
            // )
          ],
        ),
      ),
    );
  }
}
