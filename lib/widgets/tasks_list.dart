import 'package:flutter/material.dart';
import 'package:to_do_flutter/widgets/task_tile.dart';
import 'package:to_do_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Complete Physics hw"),
    Task(name: "Complete Chemistry hw"),
    Task(name: "Complete Math hw"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (checkBoxState) {
            setState(
              () {
                tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
