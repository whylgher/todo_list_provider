import 'package:flutter/material.dart';

import '../../../core/ui/theme_extensions.dart';

class TodoCardFilter extends StatefulWidget {
  const TodoCardFilter({Key? key}) : super(key: key);

  @override
  State<TodoCardFilter> createState() => _TodoCardFilterState();
}

class _TodoCardFilterState extends State<TodoCardFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 120,
        maxWidth: 150,
      ),
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.primaryColor,
        border: Border.all(
          width: 1,
          color: Colors.grey.withOpacity(.8),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                '10 TASKS',
                style: context.titleStyle.copyWith(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Hoje',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            LinearProgressIndicator(
              backgroundColor: context.primaryColorLight,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              value: 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
