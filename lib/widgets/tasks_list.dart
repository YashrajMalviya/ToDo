import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/widgets/task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (checkBoxState) {
                // You can use the taskData object to update the data
                taskData.tasks[index].toggleDone();
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
