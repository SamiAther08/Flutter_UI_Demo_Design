import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xwheelsdeal/screens/profile.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 203, 43, 147),
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        // Icon(
        //   Icons.menu,
        //   color: Colors.white,
        //   size: 30,
        // ),
        Container(
          margin: EdgeInsets.only(
            top: 30,
            bottom: 20,
          ),
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            'XWheels',
            
            style: GoogleFonts.lobster(
              fontSize: 25,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => profile()),
              );
            },
            child: Icon(Icons.account_circle,
            color: Colors.black,),
          )
        ),
        // Container(
        //   height: 40,
        //   width: 40,
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(20),
        //     child: Image.asset('assets/images/logo3.png'),
        //   ),

        // ),
      ]),
    );
  }
}
