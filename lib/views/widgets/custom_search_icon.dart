import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(.05)
      ),
      child: Center(
        child: Icon(
          size: 32,
            Icons.search
        ),
      ),
    );
  }
}