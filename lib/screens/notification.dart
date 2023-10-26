import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xwheelsdeal/screens/app_bar.dart';
import 'package:xwheelsdeal/utils/color.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final List<String> notifications = [
    "New message received",
    "Someone liked your ad",
    "You have a new ad ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        padding: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 25,bottom: 10),
            child: Text(
              'Notifications',
              style: GoogleFonts.lobster(
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
            ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return  ListTile(
                    leading: Icon(Icons.notifications,
                    color: Colors.black,
                    ),
                    title: Text(
                      notifications[index],
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: (){

                    },
                  );
                },
              )
              )
          ],
        )
        ),
    );
  }
}