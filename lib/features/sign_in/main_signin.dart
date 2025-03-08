import 'package:flutter/material.dart';
import 'package:spotify_login/core/logo.dart';

class MainSignin extends StatefulWidget {
  const MainSignin({super.key});

  @override
  State<MainSignin> createState() => _MainSigninState();
}

class _MainSigninState extends State<MainSignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Logo(scale: 8),
          Column(),
          Row(),
          Image.asset(
            'assets/images/pic3.jpg',
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }
}
