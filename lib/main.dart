import 'package:flutter/material.dart';
import 'package:halloui/bottomnav.dart';
// import 'package:halloui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bottomnav(),
      debugShowCheckedModeBanner: false,
    );
  }
}
