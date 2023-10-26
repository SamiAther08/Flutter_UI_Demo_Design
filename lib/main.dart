import 'package:flutter/material.dart';
import 'package:xwheelsdeal/screens/profile.dart';
import 'package:xwheelsdeal/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'X-Wheels',
      routes: {
        '/profile': (context) => profile(),
      },
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: const Splashscreen(),
    );
  }
}
