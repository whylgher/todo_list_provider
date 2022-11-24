import '../../core/notifier/default_change_notifier.dart';
import '../../models/taks_filter_enum.dart';

class HomeController extends DefaultChangeNotifier {
  var filterSelected = TaskFilterEnum.today;
}
