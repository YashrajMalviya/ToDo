import 'package:flutter/material.dart';
import 'package:to_do_flutter/screens/tasks_screen.dart';
void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskScreen(),

    );
  }
}

