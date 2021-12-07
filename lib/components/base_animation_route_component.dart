

import 'package:flutter/material.dart';

/// this is a animation route component which is used to routing between pages with animation
class BaseAnimationRouteComponent extends PageRouteBuilder {

  // page to route
  final Widget page;

  BaseAnimationRouteComponent({required this.page})
      : super(
            pageBuilder: (context, animation, animationtwo) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {

              //begin point of transition
              var beginTransitionPoint = Offset(1, 0);

              //end point of transition
              var endTransitionPoint = Offset(0, 0);

              //this variable is responsible for transition from begin point to end point
              var tween =
                  Tween(begin: beginTransitionPoint, end: endTransitionPoint);

              //this is used for animation
              var offsetAnimation = animation.drive(tween);

              //the slide animation for routing between pages
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );

            });
}
