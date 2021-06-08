import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
 static Database _db;


  Future<Database> get db async {
    if (_db != null) return _db;

    String path = join(await getDatabasesPath(), "kelompokmobile.db");
    _db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return _db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE mahasiswa (id INTEGER PRIMARY KEY, nama TEXT, nirm INTEGER)');
  }

  Future<int> tambahmahasiswa(Map<String, dynamic> map) async {
    _db = await db; //koneksi database
    return _db.insert("mahasiswa", map);
  }

  Future<List<Map<String, dynamic>>> datamahasiswa() async {
    _db = await db; //koneksi database
    return _db.query("mahasiswa");
  }
}