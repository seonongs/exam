import 'package:flutter/material.dart';

class screen_c extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text(
                'Go to ScreenA',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/a');
              },
            ),
            TextButton(
              child: Text(
                'Go to ScreenB',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
            )
          ],
        ),
      ),
    );
  }
}
