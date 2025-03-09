import 'package:flutter/material.dart';
import 'package:spotify_login/core/elevatedbutton.dart';
import 'package:spotify_login/core/logo.dart';
import 'package:spotify_login/core/textfeild.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
  });

  @override
  State<SignIn> createState() => _RegisterState();
}

class _RegisterState extends State<SignIn> {
  bool ispresed = false;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Logo(scale: 13)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 55),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Sign in',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'If You Need Any Support ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                          child: Text(
                        'Click Here',
                        style: TextStyle(color: Color(0xff1ED760)),
                      ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textfeild(
                      hintText: 'Enter Username Or Email',
                      obscurText: false,
                    ),
                    Textfeild(
                      SuffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ispresed = !ispresed;
                            });
                          },
                          icon: ispresed
                              ? Icon(Icons.visibility)
                              : Icon(
                                  Icons.visibility_off,
                                  color: Color(0xffBDBDBD),
                                )),
                      hintText: 'Password',
                      obscurText: !ispresed,
                    ),
                    GestureDetector(
                      child: Text('Recovery Password'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Button(
                          onpressed: () {
                            formkey.currentState!.validate();
                          },
                          buttonData: "Sign in",
                          buttonColor: Color(0xff1ED760),
                          textbuttonColor: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 43,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xff1ED760),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    child: Text('Or'),
                  ),
                  Expanded(
                    child: Divider(
                      //endIndent: 180,
                      color: Color(0xff1ED760),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/google.jpg',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/apple.png',
                      width: 60,
                      height: 35,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member ?',
                    style: TextStyle(fontSize: 14),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('register');
                      },
                      child: Text(
                        ' Register Now',
                        style: TextStyle(color: Colors.blue[800]),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
