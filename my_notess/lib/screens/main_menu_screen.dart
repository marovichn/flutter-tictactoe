import 'package:flutter/material.dart';
import 'package:my_notess/responsive/responsive.dart';
import 'package:my_notess/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
            child: CustomButton(onTap: () {}, text: "Create Room"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: CustomButton(onTap: () {}, text: "Join Room"),
          ),
        ],
      ),
    ));
  }
}
