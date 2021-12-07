import 'package:flutter/material.dart';
import 'package:test_flutter/components/base_icon_component.dart';
import 'package:test_flutter/components/base_input_component.dart';

/// login form for login screen which contains username input field
/// and contains password input field
class LoginForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const LoginForm({
    required this.usernameController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [

            // username input text field
            BaseInputComponent(
              inputHintText: "Enter your name",
              inputLabelName: "Username",
              inputIcon: BaseIconComponent(
                iconImage: 'assets/icons/person.svg',
              ),
              controller: usernameController,
              validate: (value) {},
              save: (value) {},
              inputType: TextInputType.text,
              obsText: false,
            ),

            const SizedBox(
              height: 7,
            ),

            // password input text field
            BaseInputComponent(
              inputHintText: "Enter the password",
              inputLabelName: "Password",
              inputIcon: BaseIconComponent(
                iconImage: 'assets/icons/lock.svg',
              ),
              controller: passwordController,
              validate: (value) {},
              save: (value) {},
              inputType: TextInputType.visiblePassword,
              obsText: true,
            ),

          ],
        ),
      ),
    );
  }
}
