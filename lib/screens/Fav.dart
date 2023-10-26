import 'package:flutter/material.dart';
import 'package:xwheelsdeal/screens/app_bar.dart';
import 'package:xwheelsdeal/screens/products/posts.dart';
import 'package:xwheelsdeal/utils/color.dart';

final List<OLXPost> likedPosts = [
  OLXPost(
      title: "Toyota Supra MK4",
      description:
          "The Toyota Supra MK4 is equipped with a twin-turbo 3.0-litre straight six which can produce up 320Hp and around 440 Nm of torque and is known as the 2JZ-series . The acceleration of this car from 0 to 100kmh is around 4.9 seconds, and the top speed can reach up to 277kmh.",
      imageUrl: "assets/images/car.jpg"),
  OLXPost(
    title: "Supra MK4",
    description: "The Toyota Supra MK4 is equipped with a twin-turbo 3.0-litre straight six which can produce up 320Hp and around 440 Nm of torque and is known as the 2JZ-series . The acceleration of this car from 0 to 100kmh is around 4.9 seconds, and the top speed can reach up to 277kmh.",
    imageUrl: "assets/images/car2.jpg",
  ),
  OLXPost(
    title: "Honda Accord",
    description: "The North American version of the Accord has a different body from its Japanese counterpart. The Accord in this form was sold as the Inspire in Japan and was not sold in Europe. It was discontinued in Japan in September 2012",
    imageUrl: "assets/images/car3.jpg",
  ),
  OLXPost(
    title: "Nissan 350Z",
    description: "The Nissan 350Z (known as Nissan Fairlady Z (Z33) in Japan) is a two-door, two-seater sports car that was manufactured by Nissan Motor Corporation from 2002 until 2009 and marks the fifth generation of Nissan's Z-car line.",
    imageUrl: "assets/images/car4.jpg",
  ),
];

class Favs extends StatefulWidget {
  const Favs({super.key});

  @override
  State<Favs> createState() => _FavsState();
}

class _FavsState extends State<Favs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      // drawer: NavBar(),

      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: ListView.builder(
            itemCount: likedPosts.length,
            itemBuilder: (context, index) {
              final post = likedPosts[index];
              return ListTile(
                leading: Image.network(post.imageUrl),
                title: Text(post.title),
                subtitle: Text(post.description),
              );
            },
          )),
    );
  }
}
