import 'package:flutter/material.dart';
import 'package:todoey/Widgets/taskstile.dart';
import 'package:todoey/models/tasks.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({required this.tasks});
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TasksTile(
              isChecked: widget.tasks[index].isDone,
              taskTitle: widget.tasks[index].name!,
              checkboxCallback: (checkboxState) {
                setState(
                  () {
                    widget.tasks[index].toogleDone();
                  },
                );
              });
        },
        itemCount: widget.tasks.length);
  }
}
