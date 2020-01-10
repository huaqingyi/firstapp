import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home'),
            RaisedButton(
              child: Text('To User'),
              onPressed: () {
                Navigator.pushNamed(context, '/message');
              },
            ),
          ],
        ),
      ),
    );
  }
}