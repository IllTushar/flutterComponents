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
          body: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                listView[index],
                style: TextStyle(fontSize: 20),
              );
            },
            itemCount: listView.length,
            separatorBuilder: (context,index){
              return Divider(thickness: 4,height: 4,);
            },
          )),
    );
  }
}
