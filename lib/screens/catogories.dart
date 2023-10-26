import 'package:flutter/material.dart';
import 'package:xwheelsdeal/screens/Nav_Bar.dart';
import 'package:xwheelsdeal/screens/app_bar.dart';
import 'package:xwheelsdeal/utils/color.dart';

class Catogories extends StatefulWidget {
  const Catogories({super.key});

  @override
  State<Catogories> createState() => _CatogoriesState();
}

class _CatogoriesState extends State<Catogories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: CustomAppBar(),
      drawer: NavBar(),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Text('Categories'),
        ),
        ),
    );
  }
}