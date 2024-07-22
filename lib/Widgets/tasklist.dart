import 'package:flutter/material.dart';
import 'package:todoey/Widgets/taskstile.dart';

import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
             final task =tasksData.tasks[index];
            return TasksTile(
              
                //taskTitle: Provider.of<TasksData>(context).tasks[index].name!,//read the data
                taskTitle: task.name!,
                 isChecked: task.isDone,
                checkboxCallback: (checkboxState) {//update portion
                    tasksData.updateTask(task);
                  
                },
                longPressCallback: (){
                  tasksData.deleteTasks(task);
                },);
          },
          itemCount: tasksData.taskCount);
      }

       
    );
  }
}
