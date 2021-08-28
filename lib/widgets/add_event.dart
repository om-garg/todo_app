import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/task_data.dart';

class AddEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return FloatingActionButton(
      backgroundColor: Colors.lightBlue,
      child: Center(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      onPressed: () {
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Add Event',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 25,
                        ),
                      ),
                      TextField(
                        autofocus: true,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        onChanged: (value) {
                          newTaskTitle = value;
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Text(
                              'Add',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
