/*
 * @Author: 三帆
 * @Date: 2018-11-19 20:00:00
 * @Last Modified by: 三帆
 * @Last Modified time: 2018-11-19 20:00:00
 *
 * widget分类与实例的模块, widgetPage.dart与category.dart 共用同一个模块
 * @name WidgetItem
 * @param String title
 * @param VoidCallBack onTap
 * @param String image;
 */

import 'package:flutter/material.dart';
import '../common/Style.dart';

class WidgetItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  WidgetItem({
    this.title,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.green,
        child: Container(
            decoration:  new BoxDecoration(
              border: Border(
                right: const BorderSide(width: 1.0, color: Color(WidgetDemoColor.borderColor)),
                bottom: const BorderSide(width: 1.0, color: Color(WidgetDemoColor.borderColor)),
              ),
            ),
            child: new RaisedButton(
                color: Colors.white,
                onPressed: () {
                  onTap();
                },
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(
                        Icons.add,
                        color: Color.fromRGBO(0, 150, 239, 1.0)
                    ),
                    Text(title, style: TextStyle(color:  Color.fromRGBO(0, 150, 239, 1.0))),
                  ],
                )
            )
        )
    );
  }
}