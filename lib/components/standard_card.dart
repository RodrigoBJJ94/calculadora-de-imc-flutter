import 'package:flutter/material.dart';

class StandardCard extends StatelessWidget {
  const StandardCard({Key? key, required this.color, required this.cardChild})
      : super(key: key);
  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
