import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/task_data.dart';
import 'package:todo_app/widgets/add_event.dart';
import 'package:todo_app/widgets/task_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 33,
              backgroundColor: Colors.white,
              child: Icon(
                  Icons.menu,
                  color: Colors.lightBlue,
                  size: 30,
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 30),
            child: Text(
              'Todoey',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 35),
            child: Text(
              '${Provider.of<TaskData>(context).taskCount} Tasks',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 15),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: TaskList(),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: AddEvent(),
    );
  }
}
