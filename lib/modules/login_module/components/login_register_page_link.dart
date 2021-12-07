import 'package:flutter/material.dart';


/// this is a register link component for login screen which contains link for navigate to register page
class LoginRegisterPageLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "if you don't have an account",
          ),
          GestureDetector(
            onTap: (){},
            child: Text(
              'Register Now',
              style: TextStyle(color: Colors.blue[900]),
            ),
          ),
        ],
      ),
    );
  }
}
