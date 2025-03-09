import 'package:flutter/material.dart';

class Textfeild extends StatefulWidget {
  final String? hintText;
  final bool? obscurText;
  final Widget? SuffixIcon;

  const Textfeild(
      {super.key,
      required this.hintText,
      required this.obscurText,
      this.SuffixIcon});

  @override
  State<Textfeild> createState() => _TextfeildState();
}

class _TextfeildState extends State<Textfeild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        obscureText: widget.obscurText!,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a value';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(25),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(23))),
          suffixIcon: widget.SuffixIcon,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Color(0xffBDBDBD)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(23))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(23))),
          // focusColor: Color(0xff1ED760),
        ),
      ),
    );
  }
}
