import 'package:sqflite/sqflite.dart';
import 'dart:async';

class BaseSql{
  Database db;
  final String table = '';
  var query;
  BaseSql(this.db){
    query = db.query;
  }
}