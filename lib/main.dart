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
                fontWeight: FontWeight.w800, color: Colors.orange),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          height: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("C1"),
                  Text("C1"),
                  Text("C1"),
                  Text("C1"),
                  ElevatedButton(
                      onPressed: () {
                        print("Tap Column");
                      },
                      child: const Text("Click Here"))
                ],
              ),
              Text("R1"),
              Text("R2"),
              Text("R3"),
              Text("R4"),
              ElevatedButton(
                  onPressed: () {
                    print("Tap");
                  },
                  child: const Text("Click Here"))
            ],
          ),
        ),
      ),
    );
  }
}
