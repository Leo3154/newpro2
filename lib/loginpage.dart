import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: loginpage(),
      );
    }
  ));
}

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //       child: Text(
      //     "LOGIN PAGE",
      //     style: TextStyle(fontSize: 30),
      //   )),
      //   backgroundColor: Colors.cyan,
      // ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("Assets/Image/back1.jpeg"),fit: BoxFit.fill)
          ),
          child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
              "bienvenido",
              style: TextStyle(fontSize: 50,color: Colors.white),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ),
          SizedBox(height: 70,),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,foregroundColor: Colors.black,minimumSize: Size(150, 60),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
              onPressed: (){

          }, child: Text("LOGIN",style: TextStyle(fontSize: 20),)),
          SizedBox(height: 10,),
          TextButton(onPressed: (){}, child: Text("Not a user ? create an Account"))
        ],
      )),
    );
  }
}
