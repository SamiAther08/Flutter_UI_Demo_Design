import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xwheelsdeal/screens/app_bar.dart';
import 'package:xwheelsdeal/screens/products/care_care.dart';
import 'package:xwheelsdeal/screens/products/exterior.dart';
import 'package:xwheelsdeal/screens/products/interior.dart';
import 'package:xwheelsdeal/screens/products/rims.dart';
import 'package:xwheelsdeal/screens/products/tyres.dart';
import 'package:xwheelsdeal/utils/color.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        padding: EdgeInsets.only(left: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(alignment: Alignment.topLeft),
            Padding(padding: EdgeInsets.only(top: 25, bottom: 10, left: 0),
            child: Text('Products',
            style: GoogleFonts.lobster(
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
            ),
            ),
            ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Interior Accessories '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Interior()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Exterior Accessories '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Exterior()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Car Care Products '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Car_Care()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Rims '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Rims()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Tyres '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tyres()));
            },
          ),
          ],
        ),
        ),
    );
  }
      
  }