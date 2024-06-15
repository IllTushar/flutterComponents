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
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    border: Border.all(color: Colors.black, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 51, spreadRadius: 7)
                    ]),
              ),
            ),
          )),
    );
  }
}
