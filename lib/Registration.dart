import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }));
}

class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Assets/Image/back2.jpeg"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "Register",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Name",
                    //prefixIcon: Icon(Icons.perm_identity_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Username",
                    //prefixIcon: Icon(Icons.person_2_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    //prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    labelText: "Confirm Password",
                    //prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    foregroundColor: Colors.black,
                    minimumSize: Size(150, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60))),
                onPressed: () {},
                child: Text("CREATE")),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Already have an Account",
                  style: TextStyle(color: Colors.blue[800]),
                ))
          ],
        ),
      ),
    );
  }
}
