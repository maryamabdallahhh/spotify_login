import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double scale;
  const Logo({super.key,required this.scale});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/spotifiyword.jpg',
        scale: scale,
      ),
    );
  }
}
