import 'package:flutter/material.dart';
import 'package:spotify_login/features/homescreen/home1.dart';
import 'package:spotify_login/features/homescreen/home2.dart';
import "package:spotify_login/features/sign_in/main_signin.dart";
import 'package:spotify_login/features/sign_in/register.dart';
import "package:spotify_login/features/sign_in/sign_in.dart";

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
        "register": (context) => const Register(),
        "signin": (context) => const SignIn(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
