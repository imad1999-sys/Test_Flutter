import 'package:flutter/material.dart';
import 'package:test_flutter/components/base_title_component.dart';
import 'package:test_flutter/modules/home_module/components/list_of_courses_item.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BaseTitleComponent(text: "List Of Courses"),
          const SizedBox(height: 10,),
          ListView.separated(
              itemBuilder: (context, index) {
                return ListOfCoursesItem();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10,);
              },
              itemCount: 10),
        ],
      ),
    );
  }
}
