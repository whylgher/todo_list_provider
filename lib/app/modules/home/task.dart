import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/task_model.dart';

class Task extends StatelessWidget {
  final TaskModel model;
  final dateFormat = DateFormat('dd/MM/y');
  Task({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: IntrinsicHeight(
        child: ListTile(
          contentPadding: EdgeInsets.all(8),
          leading: Checkbox(
            onChanged: (value) {},
            value: model.finished,
          ),
          title: Text(
            model.description,
            style: model.finished
                ? TextStyle(decoration: TextDecoration.lineThrough)
                : null,
          ),
          subtitle: Text(
            dateFormat.format(model.dateTime),
            style: model.finished
                ? TextStyle(decoration: TextDecoration.lineThrough)
                : null,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(width: 1),
          ),
        ),
      ),
    );
  }
}
