import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.icon, required this.description})
      : super(key: key);
  final IconData icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 95,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}