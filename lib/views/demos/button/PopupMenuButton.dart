import 'package:flutter/material.dart';

class Demo extends StatefulWidget{
  @override
  _MenusDemoState createState() => new _MenusDemoState();
}
class _MenusDemoState extends State<Demo>{
  String _bodyStr = "显示菜单内容";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("弹出菜单控件"),
        actions: <Widget>[
          new PopupMenuButton(
              onSelected: (String value){
                setState(() {
                  _bodyStr = value;
                });
              },
              itemBuilder: (BuildContext context) =><PopupMenuItem<String>>[
                new PopupMenuItem(
                    value:"选项一的内容",
                    child: new Text("选项一")
                ),
                new PopupMenuItem(
                    value: "选项二的内容",
                    child: new Text("选项二")
                )
              ]
          )
        ],
      ),
      body: new Center(
        child: new Text(_bodyStr),
      ),
    );
  }
}

