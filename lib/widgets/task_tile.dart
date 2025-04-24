import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkboxCallback;

  TaskTile({required this.isChecked,required this.taskTitle,required this.checkboxCallback});

 /* void checkboxCallback(bool? checkboxState){
    setState(() {
      isChecked =  checkboxState ?? false;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback),
    );
  }

}

