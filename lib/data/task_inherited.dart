import 'package:estudando_mobile/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> tasklist = [
    Task(
    'Aprender Flutter',
    'assets/images/flutterzin.png',
    3,
  ),
    Task(
      'Andar de bike',
      'assets/images/bike.jpg',
      1,
    ),
    Task(
      'Meditar',
      'assets/images/meditar.png',
      4,
    ),
    Task(
      'Cozinhar',
      'assets/images/comida.png',
      2,
    ),
    Task(
      'League Of Legends',
      'assets/images/lol.png',
      5,
    ),
    Task(
      'NodeJS',
      'assets/images/node.webp',
      5,
    ),];

  void newTask(String name, String photo, int difficulty){
    tasklist.add(Task(name, photo, difficulty));

  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.tasklist.length != tasklist.length;
  }
}
