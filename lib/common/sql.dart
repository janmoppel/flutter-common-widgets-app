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
    String stringConditions;
    conditions.forEach((key, value) {
      stringConditions = '$key = $value';
    });
//    print("stringConditoins, ${stringConditoins}");
    return await this.query(tableName, where: stringConditions);
  }
  Future<Map<String, dynamic>> insert(Map<String, dynamic> json) async {
    var id = await this.db.insert(tableName, json);
    json['id'] = id;
    return json;
  }
}