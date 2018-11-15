/*
 * @Author: 一凨 
 * @Date: 2018-11-08 15:29:23 
 * @Last Modified by: 一凨
 * @Last Modified time: 2018-11-08 17:09:07
 * 
 * widget list 演示模板
 */
import 'package:flutter/material.dart';

class WidgetListTemp extends StatelessWidget {
  final List<Map<String, dynamic>> widgetList;
  WidgetListTemp({Key key, this.widgetList}) : super(key: key);

  Widget _itemBuilder(context, index) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.0,color:Colors.black12))),
      child: ListTile(
        title: Text(widgetList[index]['title']),
        subtitle: Text(widgetList[index]['subTitle']),
        leading: widgetList[index]['icon'],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widgetList.length,
      itemBuilder: _itemBuilder,
    );
  }
}
