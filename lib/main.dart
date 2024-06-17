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
          body: Center(
            child: Card(
              shadowColor: Colors.orangeAccent,
              elevation: 40,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Hello Tushar!!",
                  style: TextStyle(fontFamily: 'Font_Main', fontSize: 40),
                ),
              ),
            ),
          )),
    );
  }
}
