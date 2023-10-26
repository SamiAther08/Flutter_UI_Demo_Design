
import 'package:flutter/material.dart';
import 'package:xwheelsdeal/reusablewidgets/reusable_widgets.dart';
import 'package:xwheelsdeal/screens/bottom_NAV.dart';
import 'package:xwheelsdeal/screens/signup.dart';
import 'package:xwheelsdeal/utils/color.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        hexStringToColor("CB2B93"),
        hexStringToColor("9546C4"),
        hexStringToColor("5E61F4"),
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget('assets/images/logo.png'),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Enter UserName", Icons.person_outline, false,
              _emailTextController),
              SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true, 
              _emailTextController),
              SizedBox(
                height: 30,
              ),
              SignInSignUpButton(context, true, (){ 
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => BottomNavigationBarWidget()));
              }),
              SignUpOption()

            ],
          ),
        ),
      ),
    ),
    );
  }
  Row SignUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have acoount?",
        style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(" SignUp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
           ),
        )
      ],
    );
  } 
}
