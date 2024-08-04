import 'package:flutter/material.dart';
import 'package:my_notess/responsive/responsive.dart';
import 'package:my_notess/widgets/custom_button.dart';
import 'package:my_notess/widgets/custom_text.dart';
import 'package:my_notess/widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room-screen';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _idController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Responsive(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const GlowingText(
              shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
              text: "Join Room",
              fontSize: 70,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            CustomTextField(
                hintText: "Enter your nickname", controller: _nameController),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomTextField(
                hintText: "Enter Game ID", controller: _idController),
            const SizedBox(
              height: 20,
            ),
            CustomButton(onTap: () {}, text: "Join")
          ],
        ),
      ),
    ));
  }
}
