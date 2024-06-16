import 'dart:ffi';

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
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Expanded(flex:2,child: Container(width: 100,height: 90,color: Colors.red,)),
                Expanded(flex:5,child: Container(width: 100,height: 90,color: Colors.yellow,)),
                Expanded(flex:5,child: Container(width: 100,height: 90,color: Colors.cyan,)),
                Expanded(flex:2,child: Container(width: 100,height: 90,color: Colors.green,))

              ]),
            ),
          )),
    );
  }
}
