import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/TaskData.dart';
import 'package:todoey_app/models/tasks.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class Tasklist extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked:  taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (bool? checkboxState) {
                /* setState(() {
                Provider.of<TaskData>(context).tasks[index].toggleDone();
              });*/
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
