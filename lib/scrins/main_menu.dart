import 'package:flutter/material.dart';

import '../widgets/body.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        title: const Text('Edit Profile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)),
      ),
      body: const BodyPages(),
    );
  }
}
