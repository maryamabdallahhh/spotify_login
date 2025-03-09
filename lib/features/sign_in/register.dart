import 'package:flutter/material.dart';
import 'package:spotify_login/core/logo.dart';
import 'package:spotify_login/core/textfeild.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Logo(scale: 13)),
      body: Column(
        children: [
          Text('Register'),
          Form(
              child: Column(
            children: [],
          ))
        ],
      ),
    );
  }
}
