import 'base.dart';
import 'dart:async';

abstract class Cat{
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

class CatModel extends BaseModel{
  final String table = 'cat';
  CatModel(db): super(db);

  /// 获取一级类目
  ///
  Future<List> mainList() async{
    return await this.query(table,where : 'parentId=0');
  }
}