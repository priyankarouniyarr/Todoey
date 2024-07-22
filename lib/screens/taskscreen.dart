import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoey/Widgets/tasklist.dart';
import 'package:todoey/screens/addtasksscreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
class Taskscreen extends StatelessWidget {
  const Taskscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            //add new task
            //for full screen
            // showModalBottomSheet(context: context, isScrollControlled: true, builder:(context)=>Addtasksscreen());
            showModalBottomSheet(
                context: context,
          //       builder: (context) => Addtasksscreen(addtaskscallback: (newTextTittle) {
          //            print(newTextTittle);
          //         //   setState(() {
          //            //  tasks.add(Task(name: newTextTittle));
          //            //});
          //            Navigator.pop(context);
             
          // },
          builder: (context) => Addtasksscreen(),);
          },
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, bottom: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list, size: 30.0, color: Colors.blueAccent),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0),
                Text("Todoey",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700)),
                Text("${Provider.of<TasksData>(context).taskCount}Tasks",
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: TasksList()),
          )
        ]));
  }
}
