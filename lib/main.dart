import 'dart:ffi';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var listView = ['Ram', "Mohan", "Rohit", "Sohan"];
    // Set the status bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.green, // Set your desired color here
    ));
    var email = TextEditingController();
    var password = TextEditingController();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Flutter App!!",
              style:
                  TextStyle(fontWeight: FontWeight.w800, color: Colors.orange),
            ),
            backgroundColor: Colors.blue,
          ),
          //ListView.builder is used to like recyclerview
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                    decoration: InputDecoration(
                        hintText: "Enter Email",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.orange, width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2)),
                        prefixIcon: Icon(Icons.email_outlined),
                        prefixIconColor: Colors.orangeAccent),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 20,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    controller: password,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                              BorderSide(color: Colors.orange, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.blue, width: 2)),
                      prefixIcon: Icon(Icons.key),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          Icon(Icons.visibility_off);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: Text("Login",style: TextStyle(fontFamily: 'Font_Main'),),
                  onPressed: (){
                    print("Email ${email.text.toString().trim()} , password ${password.text.toString().trim()}");
                  },
                ),
              )
            ],
          )),
    );
  }
}
