import 'package:flutter/material.dart';
import 'package:my_notess/screens/main_menu_screen.dart';
import 'package:my_notess/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Using super parameter for key
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
      /* 
      routes: , */
      home: const MainMenuScreen(),
    );
  }
}
