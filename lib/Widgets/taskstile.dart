import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

   final bool isChecked ;
   final String taskTitle;
   final Function checkboxCallback;
   TasksTile({ required this.isChecked,required this.taskTitle,required this.checkboxCallback});

  @override
  
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing:  Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue){
          checkboxCallback(newValue);
        },
       // onChanged: toogleCheckboxState
       ),//press
      );
  }}
  
 
