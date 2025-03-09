import 'package:flutter/material.dart';
import 'package:spotify_login/core/logo.dart';
import 'package:spotify_login/core/elevatedbutton.dart';

class HomeComponant extends StatelessWidget {
  final List<Widget> coulmchildren;
  final String buttondata;
  final VoidCallback onpressed;
  const HomeComponant(
      {super.key,
      required this.coulmchildren,
      required this.buttondata,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 35),
      child: Column(
        children: [
          const Logo(
            scale: 7,
          ),
          const Expanded(child: SizedBox()),
          Column(
            children: coulmchildren,
          ),
          SizedBox(
            height: 60,
          ),
          Button(
            textbuttonColor: Colors.white,
            buttonColor: Color(0xff1ED760),
            onpressed: onpressed,
            buttonData: buttondata,
          ),
        ],
      ),
    );
  }
}
