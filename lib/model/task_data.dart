import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _task = [
    Task(title: "Buy Bread"),
    Task(title: "Buy Eggs"),
    Task(title: "Buy Bananas"),
  ];
  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }
  int get taskCount {
    return _task.length;
  }
  void addTask(String newTaskTitle){
    final tasks = Task(title: newTaskTitle);
    _task.add(tasks);
    notifyListeners();
  }
  void updateTask(int index){
    _task[index].toggleCallback();
    notifyListeners();
  }
  void deleteTask(int index){
    _task.remove(_task[index]);
    notifyListeners();
  }
}