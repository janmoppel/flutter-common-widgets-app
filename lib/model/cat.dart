import 'base.dart';
import 'dart:async';
import 'dart:convert';
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

class Cat implements CatInterface {
  int id;
  String name;
  String desc;
  int depth;
  int parentId;

  Cat();

  Cat.fromJSON(Map json)
      : id = json['x'],
        name = json['name'],
        desc = json['desc'],
        depth = json['depth'],
        parentId = json['parentId'];

  String toString() {
    return '(cat $name)';
  }

  Object toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'depth': depth,
      'parentId': parentId
    };
  }
}


class CatControlModel{
  final String table = 'cat';
  Sql sql;
  CatControlModel() {
    sql = Sql.setTable(table);
  }

  /// 获取一级类目
  Future<List> mainList() async{
    List listJson =  await sql.getByCondition(conditions: {'parentId': 0});
    List<Cat> cats = listJson.map((json) {
        return new Cat.fromJSON(json);
    }).toList();
    return cats;
  }

  // 获取Cat不同深度与parent的列表
  Future<List<Cat>> getList({int depth = 1, parentId = 0}) async{
    List listJson =  await sql.getByCondition(conditions: {'parentId': parentId, 'depth': depth});
    List<Cat> cats = listJson.map((json) {
      return new Cat.fromJSON(json);
    }).toList();
    return cats;
  }
//  // 增加cat, 个人使用
//  Future addCard(Cat cat) async{
//    Map newCat = await sql.insert(cat.toMap());
//    return newCat;
//  }
}


class CatDbModel {
  CatDbModel();
}
