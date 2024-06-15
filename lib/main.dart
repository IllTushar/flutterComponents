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
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          title: const Text(
            "Flutter App!!",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.orange),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Text("Ram",style: TextStyle(fontSize: 50,),),
            Text("Shyam",style: TextStyle(fontSize: 50),),
            Text("Rohan",style: TextStyle(fontSize: 50),),
            Text("Rohit",style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}
