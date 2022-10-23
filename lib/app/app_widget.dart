import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'core/database/sqlite_adm_connection.dart';
import 'core/ui/todo_list_ui_config.dart';
import 'modules/auth/auth_module.dart';
import 'modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();
  @override
  void initState() {
    FirebaseAuth auth = FirebaseAuth.instance;
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo List Provider',
        initialRoute: '/login',
        debugShowCheckedModeBanner: false,
        theme: TodoListUiConfig.theme,
        routes: {...AuthModule().routers},
        home: const SplashPage());
  }
}
