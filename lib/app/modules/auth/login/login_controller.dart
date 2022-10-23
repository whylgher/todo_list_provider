import '../../../core/notifier/default_change_notifier.dart';
import '../../../services/user/user_service.dart';

class LoginController extends DefaultChangeNotifier {
  final UserService _userService;

  LoginController({required UserService userService})
      : _userService = userService;

  void login(String email, String password) {}
}
