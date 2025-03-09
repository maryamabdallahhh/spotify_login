import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final VoidCallback onpressed;
  final String buttonData;
  final Color buttonColor;
  final Color textbuttonColor;

  const Button(
      {super.key,
      required this.onpressed,
      required this.buttonData,
      required this.buttonColor,
      required this.textbuttonColor});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(double.infinity, 65)),
          backgroundColor: WidgetStatePropertyAll(widget.buttonColor)),
      onPressed: widget.onpressed,
      child: Center(
        child: Text(
          widget.buttonData,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: widget.textbuttonColor,
              fontSize: 20),
        ),
      ),
    );
  }
}
