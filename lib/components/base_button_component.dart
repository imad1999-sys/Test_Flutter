import 'package:flutter/material.dart';
import 'package:test_flutter/config/colors.dart';

///this is a button component which is common component between login and signup pages
class BaseButtonComponent extends StatelessWidget {
  final String btnText;
  final void Function()? btnFunc;
  final Widget btnIcon;

  const BaseButtonComponent(
      {required this.btnText, required this.btnFunc, required this.btnIcon});

  @override
  Widget build(BuildContext context) {
    //button with styles
    return GestureDetector(
      // this function is executed when the button is clicked
      onTap: btnFunc,

      child: Container(
        width: 150,
        height: 50,

        // button decoration
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),

          // button color
          color: buttonColor,

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //button icon
            btnIcon,

            //button text
            Text(
              btnText,
            ),

          ],
        ),
      ),
    );
  }
}
