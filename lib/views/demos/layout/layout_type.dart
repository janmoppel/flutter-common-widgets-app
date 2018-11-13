import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rookie_book/views/demos/layout/SamplePage.dart';

class layoutCreate extends StatefulWidget {
  static const String routeName = '/basic/layout';

  @override
  State<StatefulWidget> createState() => _layoutCreate();
}

class _layoutCreate extends State<layoutCreate> {
  Widget build(BuildContext context) {
    print("_layoutCreate");
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Layout Demo'),
        ),
        body: new ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  constraints: BoxConstraints.expand(
                    height:
                        Theme.of(context).textTheme.display1.fontSize * 1.1 +
                            200.0,
                  ),
                  padding: const EdgeInsets.all(8.0),
//                  margin: const EdgeInsets.all(100),
                  color: Colors.teal.shade700,

                  //字体位置
                  alignment: Alignment.bottomLeft,
                  child: Text('Hello World',
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(color: Colors.red)),

                  //设置装饰前背景
                  foregroundDecoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
//                          'https://www.example.com/images/frame.png'),
                          'https://pic2.zhimg.com/v2-6733af287e1220a041fc8dcef6be9dc9.jpg'),
//                      centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                    ),
                  ),
                  //旋转
                  transform: Matrix4.rotationZ(-0.1),
                ),
                new Container(
                  margin: const EdgeInsets.all(40),
//            //相对父布局上下左右的距离统一
                  width: 600,
                  height: 100,
//            color: Colors.red,
                  //阴影部分  decoration设置，上面color无效
                  decoration: new BoxDecoration(
                    boxShadow: [
                      //阴影颜色
                      BoxShadow(
                          color: Colors.red,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 10.0,
                          spreadRadius: 2.0),
                      //第二层 边框颜色
                      BoxShadow(
                          color: Colors.blueAccent, offset: Offset(5.0, 5.0)),
                      //内部填充
                      BoxShadow(color: Colors.yellow)
                    ],
                  ),
                ),
                new Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  width: 600,
                  height: 100,
                  //圆角边宽
                  decoration: new BoxDecoration(
                      //边框颜色，角度
                      border: new Border.all(color: Colors.red, width: 2.5),
                      //内部填充颜色
//                color: Colors.yellow,
                      color: Colors.white,
                      //单独控制单向角度
//                borderRadius: new BorderRadius.vertical(top: Radius.elliptical(20, 40))
                      //圆角度
                      borderRadius: new BorderRadius.circular(10)
                      //竖向左边角度
//              borderRadius: new BorderRadius.horizontal(left: Radius.elliptical(20, 40))
                      ),
                ),
                new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.green, width: 100),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
