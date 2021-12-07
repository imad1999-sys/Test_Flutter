import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// this is item from list of courses component for home screen
/// which contains course image , course title , and course duration
class ListOfCoursesItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //item of list of courses
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          //course image
          SvgPicture.asset(
            "assets/images/login.svg",
            fit: BoxFit.fill,
          ),

          //course title
          Column(
            children: [
              Text(
                'Name Of Course',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'PHP',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),

          //course duration
          Column(
            children: [
              Text(
                'Duration',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '45 hours',
                style: Theme.of(context).textTheme.bodyText2,
              ),],
          ),


        ],
      ),
    );
  }
}
