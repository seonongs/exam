import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nurschedule',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nurschedule',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 100)),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.settings,
                color: Color.fromRGBO(0, 0, 0, 10),
              ),
              onPressed: () {
                print('setting');
              }),
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Color.fromRGBO(0, 0, 0, 11),
            ),
            onPressed: () {
              print('logout');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/ssk1.png'),
                backgroundColor: Colors.white,
              ),
              accountName: const Text('신세경', style: TextStyle(
                color: Color.fromRGBO(10, 0, 0, 100)
              ),),
              accountEmail: const Text('ssk@ssk.com', style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 200)
              ),),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(220, 20, 20, 100),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
