

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked ;
  final String TaskTitle;
  final Function(bool?)checkboxChange;
  final Function()listTileDelete;
  TaskTile({ required this.isChecked,required this.checkboxChange,required this.TaskTitle,required this.listTileDelete });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(TaskTitle,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,decoration:isChecked? TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
        activeColor: Colors.deepPurpleAccent,
        value: isChecked,
        onChanged:checkboxChange
      ),
      onLongPress:listTileDelete

    );
  }
}