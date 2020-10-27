import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Add a Todo'),
  ];

  void setNewValue(String newValue){
    final task = Task(name: newValue);
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}