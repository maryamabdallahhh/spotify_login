import 'package:flutter/material.dart';
import 'package:spotify_login/features/homescreen/home1.dart';
import 'package:spotify_login/features/homescreen/home2.dart';
import "package:spotify_login/features/sign_in/main_signin.dart";

main() {
  runApp(const SpotifiyApp());
}

class SpotifiyApp extends StatelessWidget {
  const SpotifiyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home2": (context) => const Home2(),
        "mainsignin": (context) => const MainSignin(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
