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
        body: Center(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          height: 200,
                          margin: const EdgeInsets.all(20.0),
                          color: Colors.orange,
                        ),
                        Container(
                          width: 300,
                          height: 200,
                          margin: const EdgeInsets.all(20.0),
                          color: Colors.pink,
                        ),
                        Container(
                          width: 300,
                          height: 200,
                          margin: const EdgeInsets.all(20.0),
                          color: Colors.blue,
                        ),
                        Container(
                          width: 300,
                          height: 200,
                          margin: const EdgeInsets.all(20.0),
                          color: Colors.green,
                        ),
                        Container(
                          width: 300,
                          height: 200,
                          margin: const EdgeInsets.all(20.0),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.orange,
                  ),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.pink,
                  ),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.green,
                  ),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.all(20.0),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
