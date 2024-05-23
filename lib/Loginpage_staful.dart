import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: loginstaful(),);
    }
  ));
}

class loginstaful extends StatefulWidget{
  @override
  State<loginstaful> createState() => _loginstafulState();
}

class _loginstafulState extends State<loginstaful> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/Image/back2.jpeg"),fit: BoxFit.fill)),
       child: Column(
         children: [
           SizedBox(height: 130,),
           Text("Login Page",style: TextStyle(color: Colors.black45,fontSize: 30),),
           Padding(
             padding: const EdgeInsets.only(top: 50,right: 60,left: 60),
             child: TextField(decoration: InputDecoration(
               hintText: "Username",
               labelText: "Username",
               prefixIcon: Icon(Icons.person),
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
             ),
               // validator: (Uname) {
               //   if (Uname!.isEmpty ||
               //       !Uname.contains('@') ||
               //       !Uname.contains('.')) {
               //     return 'Enter valid Username';
               //   } else {
               //     return null;
               //   }
               // },
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 30,right: 60,left: 60),
             child: TextField(
               obscureText: showpass,
               obscuringCharacter: "*",
               decoration: InputDecoration(
                 hintText: "Password",
                 labelText: "Password",
                 prefixIcon: Icon(Icons.password),
                 suffixIcon: IconButton(onPressed: (){
                   setState(() {
                     if (showpass){
                       showpass=false;
                     }
                     else {
                       showpass=true;
                     }
                   });
                 }, icon: Icon( showpass==true ? Icons.visibility_off :Icons.visibility)),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(60))
             ),),
           ),
           SizedBox(height: 50,),
           ElevatedButton(
               style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,foregroundColor: Colors.black,minimumSize: Size(150, 60),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
               
               onPressed: (){

           },
               child: Text("LOGIN")),
           TextButton(onPressed: (){}, child: Text("Not a user ? Create an Account"))
         ],
       ),
     ),
   );
  }
}