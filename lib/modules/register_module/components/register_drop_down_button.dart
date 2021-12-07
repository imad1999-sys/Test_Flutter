import 'package:flutter/material.dart';

/// this is a drop down button component
class RegisterDropDownButton extends StatefulWidget {
  @override
  State<RegisterDropDownButton> createState() => _RegisterDropDownButtonState();
}

class _RegisterDropDownButtonState extends State<RegisterDropDownButton> {
  String dropdownCurrentOptionValue = 'teacher';
  var dropdownOptions =  ['teacher','student'];

  @override
  Widget build(BuildContext context) {

    //drop down button with options
    return Container(
      child: DropdownButton(

        //drop down value
        value: dropdownCurrentOptionValue,

        //drop down icon
        icon: const Icon(Icons.keyboard_arrow_down),

        //drop down options
        items:dropdownOptions.map((String dropdownOption) {
          return DropdownMenuItem(
              value: dropdownOption,
              child: Text(dropdownOption)
          );
        }
        ).toList(),

        //function when we click on an option change its value and display it in the button
        onChanged: (String? newOptionValue){
          setState(() {
            dropdownCurrentOptionValue = newOptionValue!;
          });
        },

      ),
    );
  }
}
