import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xwheelsdeal/screens/Nav_Bar.dart';
import 'package:xwheelsdeal/screens/app_bar.dart';
import 'package:xwheelsdeal/utils/color.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
          padding: EdgeInsets.only(left: 40, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: GoogleFonts.lobster(
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 18),
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/images/pic.jpg'),
              ),
              SizedBox(height: 16.0),
              Text(
                'M.Sami Ather',
                style: GoogleFonts.lobster(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'EMAIL: "samiather08@gmail.com"',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 10),
              Text(
                'PHONE: "+92 336-3006652"',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 10),
              Text(
                'ADDRESS: "Johar Town, Lahore, Pakistan"',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 10),
              Text(
                'D-O-B: January 1, 1990',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ));
  }
}
