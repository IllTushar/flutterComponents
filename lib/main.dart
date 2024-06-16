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
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/image.jpeg"),
                        radius: 50,
                      ),
                    ),
                    title: Text("${listView[index]}"),
                    subtitle: Text("subtitle"),
                    trailing: Icon(Icons.add),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 2,
                    thickness: 1,
                    color: Colors.grey,
                  );
                },
                itemCount: listView.length),
          )),
    );
  }
}
