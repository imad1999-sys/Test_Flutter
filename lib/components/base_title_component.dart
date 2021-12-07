import 'package:flutter/material.dart';

/// this is title component which is common component between screens
class BaseTitleComponent extends StatelessWidget {
  final String text;

  const BaseTitleComponent({required this.text});

  @override
  Widget build(BuildContext context) {
    // title component with its styles
    return Container(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).textTheme.headline2!.color,
          fontSize: Theme.of(context).textTheme.headline2!.fontSize,
        ),
      ),
    );
  }
}
