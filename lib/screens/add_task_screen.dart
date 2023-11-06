import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  const AddTaskScreen({super.key,required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent)),
            TextField(
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  elevation: 12.0,
                  textStyle: const TextStyle(color: Colors.white)),
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
