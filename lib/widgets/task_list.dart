import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/task_data.dart';
import 'package:todo_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              return TaskTile(
                title: taskData.task[index].title,
                isChecked: taskData.task[index].isDone,
                onChange: (value) {
                  taskData.updateTask(index);
                },
                onLongPress: () {
                  taskData.deleteTask(index);
                },
              );
            });
      },
    );
  }
}
