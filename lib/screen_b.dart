import 'package:flutter/material.dart';

class screen_b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenB'),
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
                'Go to ScreenC',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
            )
          ],
        ),
      ),
    );
  }
}
