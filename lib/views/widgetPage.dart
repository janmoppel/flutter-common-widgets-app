import 'dart:async';

import 'package:flutter/material.dart';
import '../components/Input.dart';
import '../common/eventBus.dart';
import '../routers/application.dart';
import '../model/cat.dart';


class WidgetPage extends StatefulWidget {
  final db;
  CatModel catModel;
  WidgetPage(this.db): catModel = new CatModel(db),super();

  @override
  SecondPageState createState() => new SecondPageState(catModel);
}

class SecondPageState extends State<WidgetPage> {
  CatModel catModel;
  SecondPageState(this.catModel): super();

  TextEditingController controller;
  String active =  'test';
  String data = '无';
  List<Map> listData = [];

  void initState() {
    renderCats();

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

  void renderCats(){
    catModel.mainList().then((List data){
      if(data.isNotEmpty){
        setState(() {
          listData = data;
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
    setState(() {
      active = value;
      data = '90';
    });
  }
}


class ListItemWidget extends StatelessWidget {
  final Map<String, dynamic> data;
  final int index;

  ListItemWidget(this.data, this.index);

  @override
  Widget build(BuildContext context) {
    String desc = data['desc'] != null ? data['desc'] : '';
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
                    Text(data['name']),
                    Text(desc),
                  ],
                )
            )
        )
    );
  }
}


