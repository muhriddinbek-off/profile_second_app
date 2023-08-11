import 'package:flutter/material.dart';
import 'package:profile_second_app/widgets/home_profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../widgets/gridviev_pages.dart';
import '../widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = <Widget>[
    const Icon(Icons.home, size: 30),
    const Icon(Icons.chat, size: 30),
    const Icon(Icons.add, size: 30),
    const Icon(Icons.settings, size: 30),
    const Icon(Icons.person, size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HomeProfile(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.35),
            const TextInfo(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(height: 250, child: Images()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.blue.shade100,
          buttonBackgroundColor: const Color.fromARGB(255, 115, 115, 175),
          items: items,
        ),
      ),
    );
  }
}
