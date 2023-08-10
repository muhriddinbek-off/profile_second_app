import 'package:flutter/material.dart';
import 'package:profile_second_app/widgets/home_profile.dart';

import '../widgets/gridviev_pages.dart';
import '../widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
    );
  }
}
