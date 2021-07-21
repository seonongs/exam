import 'package:flutter/material.dart';
import 'package:exam/screen_a.dart';
import 'package:exam/screen_b.dart';
import 'package:exam/screen_c.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nurschedule',
      theme: ThemeData(primarySwatch: Colors.yellow),
      // home: const MyHomePage(),
      initialRoute: '/a',
      routes: {
        '/a' : (context) => screen_a(),
        '/b' : (context) => screen_b(),
        '/c' : (context) => screen_c(),
        '/main' : (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nurschedule',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 100)),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Color.fromRGBO(0, 0, 0, 10),
              ),
              onPressed: () {
                print('setting');
              }),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Color.fromRGBO(0, 0, 0, 11),
            ),
            onPressed: () {
              print('logout');
            },
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'SnackBar',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            padding: const EdgeInsets.all(20.0),
            backgroundColor: Colors.redAccent,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (_) => SecondPage()));

            final snackBar = SnackBar(
              content: Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  print('Undo is clicked');
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            print('Show me is clicked');
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/ssk1.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/ssk2.png'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text(
                '신세경',
                style: TextStyle(color: Color.fromRGBO(10, 0, 0, 100)),
              ),
              accountEmail: Text(
                'ssk@ssk.com',
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 200)),
              ),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Color.fromRGBO(220, 20, 20, 100),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Color.fromRGBO(10, 10, 10, 10),
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Color.fromRGBO(10, 10, 10, 10),
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Color.fromRGBO(10, 10, 10, 10),
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 100)),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Color.fromRGBO(0, 0, 0, 10),
              ),
              onPressed: () {
                print('setting');
              }),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Color.fromRGBO(0, 0, 0, 11),
            ),
            onPressed: () {
              print('logout');
            },
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'Go to the First page',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
            padding: EdgeInsets.all(20.0),
            backgroundColor: Colors.redAccent,
          ),
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  print('Undo is clicked');
                },
              ),
            );

            Navigator.pop(ctx);
            ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
            print('Go to the First page is clicked');
          },
        ),
      ),
    );
  }
}
