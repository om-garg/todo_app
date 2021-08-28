import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'model/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

