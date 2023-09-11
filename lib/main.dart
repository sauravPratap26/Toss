import 'package:flutter/material.dart';
import 'package:toss/change_faces.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: ChangeFaces(),
    ),
  )
  );
}