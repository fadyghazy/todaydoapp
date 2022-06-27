import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydoappproject/models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_task.dart';
class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
              context: context, builder:(context)=>SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen()),
          ));
        },
        child: Icon(Icons.add,size: 20,color: Colors.deepPurpleAccent,),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
              padding: EdgeInsets.only(bottom:80,right:30,left: 30,top: 60 ),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.playlist_add_check_outlined,size: 30),
                      SizedBox(width: 30),
                      Text("ToDayDo",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('${Provider.of<TaskData>(context).tasks.length}Tasks',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white)),
                  SizedBox(height: 40),

                  Flexible(
                    child: Container(



                          decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),

                          ),
                          child: TasksList(),
                        ),
                  ),


                ],
              ),
            ),
      );


  }
}


