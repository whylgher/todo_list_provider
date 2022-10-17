import 'package:sqflite_common/sqlite_api.dart';

import 'migration.dart';

class MigrationV3 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
CREATE TABLE teste2 (id INTEGER)
''');
  }

  @override
  void update(Batch batch) {
    batch.execute('''
CREATE TABLE teste2 (id INTEGER)
''');
  }
}
