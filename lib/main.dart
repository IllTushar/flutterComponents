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
            style: TextStyle(
                fontWeight: FontWeight.w100, color: Colors.deepOrange),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: OutlinedButton(
              onPressed: () {
                print("Hi Tushar");
              },
              child: const Text("Click Here!!")),
        ),
      ),
    );
  }
}
