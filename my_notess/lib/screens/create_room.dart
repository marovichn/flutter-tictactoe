import 'package:flutter/material.dart';
import 'package:my_notess/resources/socket_methods.dart';
import 'package:my_notess/responsive/responsive.dart';
import 'package:my_notess/widgets/custom_button.dart';
import 'package:my_notess/widgets/custom_text.dart';
import 'package:my_notess/widgets/custom_textfield.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room-screen';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
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
                text: "Create Room",
                fontSize: 70,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              CustomTextField(
                  hintText: "Enter your nickname", controller: _nameController),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {
                  print("Button pressed");
                  _socketMethods.createRoom(
                    _nameController.text,
                  );
                },
                text: "Create",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
