import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/config/colors.dart';


/// this is a icon component which is common component between pages
class BaseIconComponent extends StatelessWidget {
  final String iconImage;

  BaseIconComponent({
    required this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    // icon component with its styles
    return Container(
      width: 18,
      height: 18,
      child: SvgPicture.asset(
        iconImage,
        color: iconColor,
      ),
    );
  }
}
