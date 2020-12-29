import 'package:flutter/material.dart';
import 'package:flutterku/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Main Page")),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
            child: Text("Go to Second Page"),
          ),
        ),
      ),
    );
  }
}
