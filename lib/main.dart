import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './Views/FirstPage.dart';
import './Views/SecondPage.dart';
import './Views/ThirdPage.dart';
import './Views/FourthPage.dart';
import './routers/routers.dart';
import './routers/application.dart';

///import './Views/Detail.dart';


import 'package:flutter/rendering.dart';


class MyApp extends StatelessWidget {
  MyApp() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
//    debugPaintSizeEnabled=true; // 渲染debug
    return new MaterialApp(
      title: 'Demo01:',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      onGenerateRoute: Application.router.generator,
    ) ;
  }
}

void main() => runApp(new MyApp()) ;


class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController controller;
  bool isSearch = false;
  String data = '无';
  String data2ThirdPage = '这是传给ThirdPage的值';
  String appBarTitle = tabData[0]['text'];
  static List tabData = [
    {'text':'业界动态','icon': new Icon(Icons.language)},
    {'text':'WIDGET','icon': new Icon(Icons.extension)},
    {'text':'官网地址','icon': new Icon(Icons.home)},
    {'text':'关于手册','icon': new Icon(Icons.favorite)}
  ];



  List<Widget> myTabs = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(initialIndex: 0, vsync: this, length:4);// 这里的length 决定有多少个底导 submenus
    for (int i = 0; i < tabData.length; i++) {
      myTabs.add(new Tab(text: tabData[i]['text'], icon: tabData[i]['icon'] ));
    }
    controller.addListener(() {
      if (controller.indexIsChanging) {
        _onTabChange();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          leading: null,
          automaticallyImplyLeading: true,
          title: isSearch ? new TextField(
              onEditingComplete: () {
                this.setState(() {
                  isSearch = false;
                });
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                hintText: '请输入搜索词',
                  isDense: true,
              )
          ) : new Text(appBarTitle),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Repair it',
              onPressed: () {
                this.setState(() {
                  isSearch = true;
                });
              }
            ),
          ],
        ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new FirstPage(),
            new SecondPage(),
            new ThirdPage(data2ThirdPage: data2ThirdPage, callback: (val) => _onDataChange(val)),
            new FourthPage()
          ]
      ),
      bottomNavigationBar: new Material(
        //color:Colors.orangeAccent,
        color: const Color(0xFFF0EEEF),   //底部导航栏主题颜色
        child: new Container(
            height:65.0,
            //color:const Color(0xFFF0EEEF),
            child: new TabBar(
              controller:controller,
              indicatorColor: Colors.blue, //tab标签的下划线颜色
              labelColor:const Color(0xFF000000),
              tabs: this.myTabs
          )
        )
      )
    );
  }
  void _onTabChange() {
    this.setState(() {
      appBarTitle = tabData[controller.index]['text'];
    });
  }
  void _onDataChange(val) {
    setState(() {
      data = val;
    });
  }
}

