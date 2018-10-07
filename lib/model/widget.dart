import 'base.dart';
import 'dart:async';

abstract class WidgetInterface{
    int get id;
    //组件英文名
    String get name;
    //组件中文名
    String get cnName;
    //组件截图
    String get image;
    //组件markdown 文档
    String get doc;
    //组件 demo ，多个以 , 分割
    String get demo;
    //类目 id
    int get catId;
}

class WidgetModel extends BaseModel{
  final String table = 'widget';
  WidgetModel(db): super(db);

  ///搜索组件
  ///@param key
  Future<List> search(String key) async{
    return await this.query(table,where : "name like '%$key%' OR cnName like '%$key%'");
  }
}