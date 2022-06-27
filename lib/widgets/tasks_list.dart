import 'package:flutter/material.dart';
import 'package:todaydoappproject/models/task_data.dart';
import 'package:todaydoappproject/widgets/task_tile.dart';
import 'package:provider/provider.dart';
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child)=>
        ListView.builder(
           itemCount: taskData.tasks.length,
           itemBuilder: (context, index) =>
              TaskTile(isChecked:taskData.tasks[index].isDone,TaskTitle:taskData.tasks[index].name,
              checkboxChange: (newValue) {
               taskData.updateTask(taskData.tasks[index]);
              },
              listTileDelete:(){
                taskData.removeTask(taskData.tasks[index]);
              }
                )),
       );


  }
}
