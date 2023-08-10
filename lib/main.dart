import 'package:flutter/material.dart';
import 'package:profile_second_app/provider/modal_provider.dart';
import 'package:profile_second_app/scrins/home_page.dart';
import 'package:profile_second_app/scrins/main_menu.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserProvider>(
      create: (context) => UserProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const MainMenu(),
          '/home-page': (context) => const HomePage(),
        },
      ),
    );
  }
}
