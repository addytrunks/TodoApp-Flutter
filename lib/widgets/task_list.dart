import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context,index){
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            longPressCallBack: (){
              taskData.deleteTask(index);
            },
          );
        },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}