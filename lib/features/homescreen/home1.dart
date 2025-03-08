import 'package:flutter/material.dart';
import 'package:spotify_login/core/home_componant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            // alignment: Alignment(.01099, 0),
            width: double.infinity,
            height: double.infinity,
            image: AssetImage("assets/images/pic1.jpeg"),
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF161D2E).withOpacity(0.4),
                  Colors.black.withOpacity(0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          HomeComponant(
            onpressed: () {
              Navigator.of(context).pushNamed('home2');
            },
            buttondata: "Get Started",
            coulmchildren: [],
          ),
        ],
      )),
    );
  }
}
