import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/screens/tasks_screen.dart';
import 'package:to_do_flutter/models/task_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: const MaterialApp(
        title: 'To do',
        home: TaskScreen(),
      ),
    );
  }
}
