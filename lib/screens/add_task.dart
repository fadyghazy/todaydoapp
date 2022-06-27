import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydoappproject/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {
String?newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    child:Column(
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [

         Padding(
    padding: EdgeInsets.only(top:10),
    child: Text("Add Task",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)),

        SizedBox(height:3) ,
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText){
            newTaskTitle=newText;
          },
        ),
        SizedBox(height:20),
        Consumer<TaskData>(
          builder: (context,taskData,child)=>
           TextButton(onPressed:(){
             taskData.addTask(newTaskTitle!);
             Navigator.pop(context);
          },child:Text("Add",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold)),style: TextButton.styleFrom(backgroundColor: Colors.deepPurpleAccent
          ,primary: Colors.white),),
        )
      ],
    ) ,
    );
  }
}