import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Addtasksscreen extends StatelessWidget {
String ? newTextTittle;
final Function(String?) ?addtaskscallback;
Addtasksscreen({ this.addtaskscallback});
  @override
  
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Add Tasks',
                  style:
                      TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText){
                  newTextTittle = newText;
                  },),
                SizedBox(
                  height: 10.0,
                ),
                MaterialButton(
                    onPressed: () {
                      //add our text
                     // print(newTextTittle);
                     addtaskscallback!(newTextTittle);
                    },
                    child: Text("Add", style: TextStyle(color: Colors.white)),
                    color: Colors.lightBlueAccent)
              ],
            ),
          )),
    );
  }
}
