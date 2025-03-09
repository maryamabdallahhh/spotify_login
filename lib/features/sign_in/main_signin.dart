import 'package:flutter/material.dart';
import 'package:spotify_login/core/elevatedbutton.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 65,
          ),
          Logo(scale: 8),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                'Enjoy Listening To Music',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                child: Text(
                  textAlign: TextAlign.center,
                  'Lorem ipsum dolor sit amet consectetur. Et eleifend quis augue aliquam ut morbi turpis massa augue.',
                  style: TextStyle(
                      color: Color(0xff868686),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                onpressed: () {
                  Navigator.of(context).pushNamed('register');
                },
                buttonData: "Register",
                buttonColor: Color(0xff1ED760),
                textbuttonColor: Colors.white,
              ),
              Button(
                onpressed: () {
                  Navigator.of(context).pushNamed('signin');
                },
                buttonData: "Sign In",
                buttonColor: Color(0xffEEEEEE),
                textbuttonColor: Colors.black,
              ),
            ],
          ),
          Image.asset(
            'assets/images/pic3.jpg',
            alignment: Alignment.bottomLeft,
          )
        ],
      ),
    );
  }
}
