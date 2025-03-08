import 'package:flutter/material.dart';
import 'package:spotify_login/core/home_componant.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xFFC7C7C7),
        ),
        Image.asset(
          alignment: Alignment(.35, 0),
          'assets/images/pic2.png',
          fit: BoxFit.cover,
        ),
        HomeComponant(
          coulmchildren: [],
          buttondata: "continue",
          onpressed: () {
            Navigator.of(context).pushNamed('mainsignin');
          },
        )
      ],
    );
  }
}
