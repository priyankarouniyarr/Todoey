import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
     bool isChecked=false;

void callbackcheckbox(bool? checkboxState){
setState(() {
  isChecked=checkboxState??false;//The ?? operator ensures that if checkboxState is null, isChecked will be set to false
});
}
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Can i do this work',style:TextStyle(decoration: isChecked?TextDecoration.lineThrough:null)),
      trailing: Taskscheckbox(checkboxState: isChecked,toogleCheckboxState: callbackcheckbox,),
    );
  }//checkboxState is passed to TasksCheckbox to indicate whether it is checked.
//toggleCheckboxState is the callback function passed to handle changes in the checkbox state.
}
class Taskscheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?)? toogleCheckboxState;
  Taskscheckbox({this.checkboxState,this.toogleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return  Checkbox(value: checkboxState,
    activeColor:Colors.lightBlueAccent,
     onChanged:toogleCheckboxState );
}
  
}
