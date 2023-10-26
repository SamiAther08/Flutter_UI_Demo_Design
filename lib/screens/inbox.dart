import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xwheelsdeal/screens/Nav_Bar.dart';
import 'package:xwheelsdeal/screens/app_bar.dart';
import 'package:xwheelsdeal/utils/color.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
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
        child: ListView(
          padding: EdgeInsets.only(top: 40),
          children: [
            // Text('Inbox',
            // style: GoogleFonts.lobster(
            //   fontSize: 20,
            //   color: Color.fromARGB(255, 0, 0, 0),
            //   fontWeight: FontWeight.bold,
            // ),
            // ),
            Padding(
              padding: EdgeInsets.only(bottom: 30, left: 20),
              child: Text(
                'Inbox',
                style: GoogleFonts.lobster(
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ChatTile(
              name: 'Ali',
              message: 'Hey, what\'s up?',
              time: '10:30 AM',
              unreadCount: 2,
            ),
            ChatTile(
              name: 'Hamza',
              message: 'What is your final demand?',
              time: '9:45 AM',
              unreadCount: 1,
            ),
            ChatTile(
              name: 'Shaheer',
              message: 'Is it available? ',
              time: 'Yesterday',
              unreadCount: 0,
            ),
            ChatTile(
              name: 'Qasim',
              message: 'Is it a 2022 model? ',
              time: '2 days ago',
              unreadCount: 0,
            ),
            ChatTile(
              name: 'Sami',
              message: 'Kitne CC hai? ?',
              time: '3 days ago',
              unreadCount: 0,
            ),
          ],
        ),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final int unreadCount;

  ChatTile({
    required this.name,
    required this.message,
    required this.time,
    required this.unreadCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 22, 22, 22),
        child: Text(name[0]),
      ),
      title: Text(name),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              message,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(time),
        ],
      ),
      trailing: unreadCount > 0
          ? CircleAvatar(
              backgroundColor: Color.fromARGB(255, 31, 30, 30),
              child: Text(unreadCount.toString()),
            )
          : null,
    );
  }
}
