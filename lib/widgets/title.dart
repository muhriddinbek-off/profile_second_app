import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  final String textName;
  const TitlePage({super.key, required this.textName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 7),
      child: Text(textName, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
    );
  }
}
