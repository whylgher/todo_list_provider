import 'package:provider/provider.dart';

import '../../core/modules/todo_list_module.dart';
import 'login/login_controller.dart';
import 'login/login_page.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(bindings: [
          ChangeNotifierProvider(
            create: ((context) => LoginController()),
          )
        ], routers: {
          '/login': ((context) => const LoginPage())
        });
}
