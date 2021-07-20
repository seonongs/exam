import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nurschedule',
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
        title: Row(
          children: const [
            Text('Nurschedule', style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 100)
            ),),
          ],
        ),
        backgroundColor: Colors.yellowAccent,
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Icons.settings, color: Color.fromRGBO(0, 0, 0, 10),),
              onPressed: () {
                print('setting');
              }
          ),
          IconButton(
            icon: Icon(Icons.logout, color: Color.fromRGBO(0, 0, 0, 11),),
            onPressed: () {
              print('logout');
            },
          ),
        ],
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
