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

  void initState() {
    eventBus.on<MyEvent>().listen((MyEvent data) => // 绑定事件
        show(data.text)
    );
  }

  void show(String val) {
    print('show:'+val);
    setState(() {
      data= val;
    });
  }


  @override
  Widget build(BuildContext context) {
    print("MediaQueryData.size ${MediaQuery.of(context).size.width}");
//    double itemWidth = MediaQuery.of(context).size.width;
//    double itemHeight = 50.0;
    return new Scaffold( // scaffold是一个脚手架，可以就理解为一个html，appBar就是上面的那个titlebar，body
        appBar: new AppBar(
            backgroundColor: const Color(0xFFF0EEEF),
            title: new Text('WIDGET',style: TextStyle(color: Colors.black))
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 4,
          // Generate 100 Widgets that display their index in the List
          children: List.generate(4, (index) {
              return Container(
                  decoration:  new BoxDecoration(
                    border: Border(

                      right: const BorderSide(width: 1.0, color: const Color(0xFFFF000000)),
                      bottom: const BorderSide(width: 1.0, color: const Color(0xFFFF000000)),
                    ),
                  ),
                  child: new RaisedButton(
                    onPressed: () {
                      Application.router.navigateTo(context, "/demo?name=test");
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
              );
            }
          ),
        )
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
