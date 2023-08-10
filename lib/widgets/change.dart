import 'package:flutter/material.dart';

class ChangeButton extends StatelessWidget {
  const ChangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Color(0xFF242760)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))), minimumSize: MaterialStatePropertyAll(Size(MediaQuery.of(context).size.height * 0.3, 45))),
        onPressed: () {
          Navigator.pushNamed(context, '/home-page');
        },
        child: const Text(
          'Save changes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ));
  }
}
