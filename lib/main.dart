import 'package:firstapp/layout/layout.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Layout('Flutter Demo Layout ...'),
    ),
  );
}
