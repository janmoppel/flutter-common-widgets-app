import './provider.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';


class BaseModel{
  Database db;
  final String table = '';
  var query;
  BaseModel(this.db){
    query = db.query;
  }
}

class Sql extends BaseModel {
  final String tableName;

  Sql.setTable(String name)
      : tableName = name,
        super(Provider.db);

  // sdf
  Future<List> get() async{
    return await this.query(tableName);
  }
  String getTableName () {
    return tableName;
  }
  // condition: {}
  Future<List> getByCondition({Map<String, dynamic> conditions}) async {
    if (conditions == null ||conditions.isEmpty) {
      return this.get();
    }
    String stringConditoins = '';
    conditions.forEach((key, value) {
      stringConditoins = '$key = $value';
    });
    print("stringConditoins, ${stringConditoins}");
    return await this.query(tableName, where: stringConditoins);

  }
}