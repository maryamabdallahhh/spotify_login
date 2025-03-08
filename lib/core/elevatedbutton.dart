import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final VoidCallback onpressed;
  final String buttonData;
  const Button({super.key, required this.onpressed, required this.buttonData});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(double.infinity, 65)),
          backgroundColor: WidgetStatePropertyAll(Color(0xFF1ED760))),
      onPressed: widget.onpressed,
      child: Center(
        child: Text(
          widget.buttonData,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
