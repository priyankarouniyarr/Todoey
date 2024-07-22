import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoey/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';

class Addtasksscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTextTittle;
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
                  onChanged: (newText) {
                    newTextTittle = newText;
                    //   print(newTextTittle);
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                MaterialButton(
                    onPressed: () {
                     // print(newTextTittle);
                      Provider.of<TasksData>(context, listen: false).addTask(newTextTittle!);
                    //  print(newTextTittle);
                      Navigator.pop(context);
                    },
                    child: Text("Add", style: TextStyle(color: Colors.white)),
                    color: Colors.lightBlueAccent)
              ],
            ),
          )),
    );
  }
}
