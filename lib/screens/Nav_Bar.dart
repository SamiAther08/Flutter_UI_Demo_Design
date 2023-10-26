import 'package:flutter/material.dart';
import 'package:xwheelsdeal/screens/Fav.dart';
import 'package:xwheelsdeal/screens/ads.dart';
import 'package:xwheelsdeal/screens/notification.dart';
import 'package:xwheelsdeal/screens/products.dart';
import 'package:xwheelsdeal/screens/setting.dart';
import 'package:xwheelsdeal/screens/signin.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(colors: [
          //     hexStringToColor("CB2B93"),
          //     hexStringToColor("9546C4"),
          //     hexStringToColor("5E61F4"),
          //   ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('M Sami Ather'),
            accountEmail: Text('samiather08@gmail.com'),
            // currentAccountPicture: CircleAvatar(
            //   child: ClipOval(child: Image.asset('assets/images/pic.jpg')),
            // ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/car.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.ad_units_rounded),
            title: Text('Ads'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Ads()));
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text('Favs'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Favs()));
            },
          ),
          ListTile(
            leading: Icon(Icons.car_crash),
            title: Text('Products'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Products()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('LogOut'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            },
          )
        ],
      ),
    );
  }
}
