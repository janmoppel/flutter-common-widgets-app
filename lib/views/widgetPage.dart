


import 'package:flutter/material.dart';
import '../routers/application.dart';
import '../common/Style.dart';
import '../model/cat.dart';
import '../widgets/index.dart';
import '../components/widget_item.dart';





class WidgetPage extends StatefulWidget {
  final db;
  final CatControlModel catModel;
  WidgetPage(this.db): catModel = new CatControlModel(),super();

  @override
  SecondPageState createState() => new SecondPageState(catModel);
}

class SecondPageState extends State<WidgetPage> {
  CatControlModel catModel;
  SecondPageState(this.catModel): super();

  TextEditingController controller;
  String active =  'test';
  String data = '无';

  List<Cat> categories = [];


  void initState() {
    renderCats();
  }


  void renderCats(){
    catModel.getList().then((List data){
      if(data.isNotEmpty){
        setState(() {
          categories = data;
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    if (categories.length == 0) {
      return new Container();
    }
    print("categories in widgetPage : ${categories[0]}");
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //每行2个
          mainAxisSpacing: 0.0, //主轴(竖直)方向间距
          crossAxisSpacing: 0.0, //纵轴(水平)方向间距
          childAspectRatio: 0.8 //纵轴缩放比例
      ),
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return new WidgetItem(
          title: categories[index].name,
          onTap: () {
            Application.router.navigateTo(context, "/category/${categories[index].name}");
          },
        );
      },
    );
  }

  void _onChanged(String value) {
    setState(() {
      active = value;
      data = '90';
    });
  }
}
