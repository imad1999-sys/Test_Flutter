import 'package:flutter/material.dart';
import 'package:test_flutter/components/base_icon_component.dart';
import 'package:test_flutter/components/base_input_component.dart';
import 'package:test_flutter/modules/register_module/components/register_drop_down_button.dart';



///this is a register form which contains username text field
///and contains password text field
///and contains select options input field
class RegisterForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const RegisterForm({required this.usernameController, required this.passwordController});

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


            //drop down button which we select the options to detect the type of user
            RegisterDropDownButton(),
          ],
        ),
      ),
    );
  }
}
