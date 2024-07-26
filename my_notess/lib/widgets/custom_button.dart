import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 134, 156, 255),
                blurRadius: 5,
                spreadRadius: 0,
                offset: Offset(0, 6))
          ],
        ),
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
                minimumSize: Size(width, 50),
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                backgroundColor: const Color.fromARGB(255, 68, 96, 255)),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
            )));
  }
}
