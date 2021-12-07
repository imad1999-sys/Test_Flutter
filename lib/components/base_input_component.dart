import 'package:flutter/material.dart';
import 'package:test_flutter/config/colors.dart';

/// this is input component which is common between login page and signup page
class BaseInputComponent extends StatelessWidget {
  final String inputHintText;
  final String inputLabelName;
  final Widget inputIcon;
  final TextEditingController controller;
  final String? Function(String?)? validate;
  final void Function(String?)? save;
  final bool obsText;
  final TextInputType inputType;

  BaseInputComponent({
    required this.inputHintText,
    required this.inputLabelName,
    required this.inputIcon,
    required this.controller,
    required this.validate,
    required this.save,
    required this.inputType,
    required this.obsText,
  });

  @override
  Widget build(BuildContext context) {
    // input field component with its styles
    return TextFormField(
      controller: controller,
      validator: validate,
      onSaved: save,

      // this for input type like text , email , visible pass , ...
      keyboardType: inputType,
      obscureText: obsText,

      // input field text style
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
        color: Theme.of(context).textTheme.bodyText1!.color,
      ),

      decoration: InputDecoration(
        hintText: inputHintText,
        labelText: inputLabelName,

        // input field icon
        prefixIcon: Padding(
          padding: const EdgeInsets.all(4),
          child: inputIcon,
        ),

        //input field border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: inputBorderColor, width: 2),
        ),

      ),
    );
  }
}
