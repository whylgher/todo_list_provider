import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/modules/home/widgets/home_filters.dart';
import 'package:todo_list_provider/app/modules/home/widgets/home_header.dart';

import '../../core/ui/theme_extensions.dart';
import '../../core/ui/todo_list_icons.dart';
import 'widgets/home_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: context.primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          PopupMenuButton(
            icon: Icon(TodoListIcons.filter),
            itemBuilder: (_) => [
              PopupMenuItem<bool>(
                child: Text('Mostrar tarefas concluidas.'),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Color(0xFFFAFBFE),
      drawer: HomeDrawer(),
      body: LayoutBuilder(
        builder: (context, constrains) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constrains.maxHeight,
                minWidth: constrains.maxWidth,
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeHeader(),
                      HomeFilters(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
