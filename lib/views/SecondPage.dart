import 'dart:async';

import 'package:flutter/material.dart';
import '../components/Input.dart';
import '../common/eventBus.dart';
import '../routers/application.dart';
// 使用
import 'todo.dart';

@todo('seth', 'make this do something')
void doSomething() {
  print('do something');
}


class SecondPage extends StatefulWidget {
  @override
  SecondPageState createState() => new SecondPageState();
}

class SecondPageState extends State<SecondPage> {

  TextEditingController controller;
  String active =  'test';
  String data = '无';
  final List<ListItem> listData = [];


  void initState() {
    eventBus.on<MyEvent>().listen((MyEvent data) => // 绑定事件
        show(data.text)
    );
    for (int i = 0; i < 20; i++) {
      listData.add(new ListItem("我是-$i", Icons.cake));
    }
  }

  void show(String val) {
    print('show:'+val);
    setState(() {
      data= val;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold( // scaffold是一个脚手架，可以就理解为一个html，appBar就是上面的那个titlebar，body
        appBar: new AppBar(
            backgroundColor: const Color(0xFFF0EEEF),
            title: new Text('WIDGET',style: TextStyle(color: Colors.black))
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //每行2个
              mainAxisSpacing: 0.0, //主轴(竖直)方向间距
              crossAxisSpacing: 0.0, //纵轴(水平)方向间距
              childAspectRatio: 0.8 //纵轴缩放比例
          ),
          itemCount: listData.length,
          itemBuilder: (BuildContext context, int index) {
            return ListItemWidget(listData[index], index);
          },
        ),
      );
  }

  void _onChanged(String value) {
    doSomething();
    setState(() {
      active = value;
      data = '90';
    });
  }
}


class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}


class ListItemWidget extends StatelessWidget {
  final ListItem listItem;
  final int index;

  ListItemWidget(this.listItem, this.index);

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.green,
        child: Container(

            decoration:  new BoxDecoration(
              color: Colors.white,
              border: Border(
                right: const BorderSide(width: 1.0, color: const Color(0xFFFF000000)),
                bottom: const BorderSide(width: 1.0, color: const Color(0xFFFF000000)),
              ),
            ),
            child: new RaisedButton(
                onPressed: () {
                  Application.router.navigateTo(context, "/demo?name=test${this.index}");
                },
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.red[500],
                    ),
                    Text('测试'),
                  ],
                )
            )
        )
    );
  }
}


