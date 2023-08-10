import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  final String title;
  final Function() ontap;
  const ButtonProfile({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(Size(0, 35)),
          backgroundColor: const MaterialStatePropertyAll(Color(0xFF242760)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(11))),
        ),
        onPressed: ontap,
        child: Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)));
  }
}
