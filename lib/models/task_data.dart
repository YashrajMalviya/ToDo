import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "Complete Physics hw"),
    Task(name: "Complete Chemistry hw"),
    Task(name: "Complete Math hw"),
  ];

  int get taskCount{
    return tasks.length;
  }
}
