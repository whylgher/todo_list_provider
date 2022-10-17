import 'package:sqflite_common/sqlite_api.dart';

import 'migration.dart';

class MigrationV2 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
CREATE TABLE teste (id INTEGER)
''');
  }

  @override
  void update(Batch batch) {
    batch.execute('''
CREATE TABLE teste (id INTEGER)
''');
  }
}
