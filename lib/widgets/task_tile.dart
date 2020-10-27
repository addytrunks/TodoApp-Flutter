import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String taskTitle;
  final Function longPressCallBack;

  TaskTile({this.taskTitle,this.longPressCallBack});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: widget.longPressCallBack,
      title: Text(
          widget.taskTitle,
        style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checked,
        onChanged: (ch){
          setState(() {
            checked = !checked;
          });
        },
    ),
  );
  }
}

