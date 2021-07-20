// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'data',
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 12.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'data',
              style: TextStyle(
                  color: Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'data',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 100),
                backgroundColor: Color.fromRGBO(255, 255, 255, 100),
                fontSize: 50,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
