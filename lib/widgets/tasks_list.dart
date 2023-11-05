import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/widgets/task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (checkBoxState) {
            // setState(
            //   () {
            //     Provider.of<TaskData>(context).tasks[index].toggleDone();
            //   },
            // );
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
