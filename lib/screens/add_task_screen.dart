import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',textAlign:TextAlign.center,style: TextStyle(color: Colors.lightBlueAccent,fontSize: 30,fontWeight: FontWeight.w300),),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (value){
                taskName = value;
              },
            ),
            SizedBox(height: 20,),
            FlatButton(
              padding: EdgeInsets.all(15),
              color: Colors.lightBlueAccent,
              onPressed: (){
                Provider.of<TaskData>(context,listen: false).setNewValue(taskName);
                Navigator.pop(context);
              },
              child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 15),),
                )
          ],
        ),
      ),
    );
  }
}
