import 'package:flutter/cupertino.dart';
import 'package:todoey_app/models.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class Tasklist extends StatefulWidget {
  final List<Task> tasks;

  Tasklist({required this.tasks});


  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<Tasklist> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkboxCallback: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
