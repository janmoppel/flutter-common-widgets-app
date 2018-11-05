import 'base.dart';
import 'dart:async';
import '../common/sql.dart';

abstract class CatInterface{
    int get id;
    //类目名称
    String get name;
    //描述
    String get desc;
    //第几级类目，默认 1
    int get depth;
    //父类目id，没有为 0
    int get parentId;
}

class Cat {
  int id;
  String name;
  String desc;
  int depth;
  int parentId;
  Cat.fromJSON(Map json)
      : id = json['x'],
        name = json['name'],
        desc = json['desc'],
        depth = json['depth'],
        parentId = json['parentId'];

  String toString() {
    return '(cat $name)';
  }
}


class CatModel{
  final String table = 'cat';
  Sql sql;
  CatModel(db) {
    sql = Sql.setTable(table);
  }

  /// 获取一级类目
  Future<List> mainList() async{
    List listJson =  await sql.getByCondition(conditions: {'parentId': 0});
    List<Cat> Cats = listJson.map((json) {
        return new Cat.fromJSON(json);
    }).toList();
    return Cats;
  }

  Future<List> getList(int depth) async{
    List a =  await sql.getByCondition(conditions: {'parentId': 0});
    return a;
  }
}


class CatDbModel {
  CatDbModel();
}

