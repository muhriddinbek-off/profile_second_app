import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  final String title;
  const BoxContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.centerLeft,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 2, color: const Color.fromRGBO(84, 76, 76, 0.14)),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF544C4C)),
      ),
    );
  }
}
