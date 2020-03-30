import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{

  static DatabaseHelper _databaseHelper;
  static Database _database;
  DatabaseHelper._createInstance();

  DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await _initializeDatabase();
    }
    return _database;
  }

  Future<Database> _initializeDatabase() async {
    var directory = await getDatabasesPath();
    String path = join(directory, 'kw.db');
    Database database = await openDatabase(path, version: 1);
    return database;
  }

  Future<int> insert(String table, Map data) async {
    Database db = await this.database;
    return await db.insert(table, data);
  }

}
