import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// this is a login image component for login screen
class LoginImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: SvgPicture.asset(
        "assets/images/login.svg",
        fit: BoxFit.cover,
      ),
    );
  }
}
