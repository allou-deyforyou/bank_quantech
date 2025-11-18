import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

final class SembastDataSource {
  SembastDataSource();

  @override
  String toString() {
    return '$runtimeType()';
  }

  Future<void> dispose() async {
    final db = await _databaseCompleter?.future;
    db?.close();
  }

  Completer<Database>? _databaseCompleter;

  Future<Database> getDatabaseInstance() async {
    if (_databaseCompleter != null) return _databaseCompleter!.future;
    _databaseCompleter = Completer<Database>();

    final dir = await getApplicationDocumentsDirectory();
    // make sure it exists
    await dir.create(recursive: true);
    // build the database path
    final dbPath = join(dir.path, 'my_database.db');
    // open the database
    final db = await databaseFactoryIo.openDatabase(dbPath);

    _databaseCompleter!.complete(db);
    return db;
  }
}
