// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:coffee_clone/pages/HomePage1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(brightness: Brightness.dark,
      primarySwatch: Colors.orange),
    );
    
  }
}