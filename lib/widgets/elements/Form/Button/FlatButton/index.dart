/**
 * Created with 菜鸟手册.
 * User: 一晟
 * Date: 2018/11/14
 * Time: 下午4:31
 * email: zhu.yan@alibaba-inc.com
 * target: FlatButton 的示例
 * 对应文档地址:https://docs.flutter.io/flutter/material/FlatButton-class.html
 */

import 'package:flutter/material.dart';

const String _flatText = 'material 的 “flat button”。'
'flat button 是显示在（zero elevation）材质 小部件上的文本标签，通过填充颜色对触摸作出反应。';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Form/Button/FlatButton';

  @override
  _Demo createState() => _Demo();
}

class _Demo extends State<Demo> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FlatButton"),
        ),
        // Align,Column 控制居中
        body: Align(
            alignment: const Alignment(0.0, 0.0),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.only(bottom: 20.0, top: 20.0, left: 30.0, right: 30.0),
                    child: new Text(_flatText,
                        style: new TextStyle(
                          fontSize: 20.0,
                    )),
                  ),
                  ButtonBar(
                    alignment:MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlatButtonDefault(context),
                      SizedBox(width: 20.0),// 间距
                      FlatButtonCustom(context)
                    ],
                  ),
                  ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlatButtonDefault(context),
                      FlatButtonCustom(context)
                    ],
                  ),
                ])));
  }
}

/*
  * alert 弹框
  * context:容器的父级
  * */
void _showMessage(String name, BuildContext context) {
  showDialog(
    // alert 的父级
    context: context,
    child: new AlertDialog(
        title: new Text('提示'),
        content: new Text(name),
        actions: <Widget>[
          new FlatButton(
              // alert 的取消按钮
              onPressed: () {
                // 取消的事件
                Navigator.of(context).pop(true);
              },
              child: new Text('取消'))
        ]),
  );
}

/*
* FlatButton 默认按钮的实例
* */
Widget FlatButtonDefault(BuildContext context) {
  return FlatButton(
      // 文本内容
      child: const Text('默认按钮', semanticsLabel: 'FLAT BUTTON 2'),
      // 按钮颜色
      // color: Colors.blueGrey,
      // FlatButton 的点击事件,这个事件必须带上,否则背景色为透明
      onPressed: () {
        //_showMessage('点击了 FLAT BUTTON ', context);
      }
  );
}
/*
* FlatButton 自定义的实例
* */
Widget FlatButtonCustom(BuildContext context) {
  return FlatButton(
      // 文本内容
      child: const Text('自定义按钮', semanticsLabel: 'FLAT BUTTON 2'),
      // 按钮颜色
      color: Colors.blueAccent,
      // 按钮亮度
      colorBrightness: Brightness.dark,
      // 高亮时的背景色
      //highlightColor: Colors.yellow,
      // 失效时的背景色
      disabledColor: Colors.grey,
      // 该按钮上的文字颜色，但是前提是不设置字体自身的颜色时才会起作用
      textColor: Colors.yellow,
      // 按钮失效时的文字颜色，同样的不能使用文本自己的样式或者颜色时才会起作用
      disabledTextColor: Colors.grey,
      // 按钮主题,主要用于与ButtonTheme和ButtonThemeData一起使用来定义按钮的基色,RaisedButton，FlatButton，OutlineButton，它们是基于环境ButtonTheme配置的
      //ButtonTextTheme.accent，使用模版颜色的;ButtonTextTheme.normal，按钮文本是黑色或白色取决于。ThemeData.brightness;ButtonTextTheme.primary，按钮文本基于。ThemeData.primaryColor.
      textTheme: ButtonTextTheme.normal,
      // 按钮内部,墨汁飞溅的颜色,点击按钮时的渐变背景色，当你不设置高亮背景时才会看的更清楚
      splashColor: Colors.black,
      // 抗锯齿能力,抗锯齿等级依次递增,none（默认),hardEdge,antiAliasWithSaveLayer,antiAlias
      clipBehavior: Clip.antiAlias,
      padding: new EdgeInsets.only(bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
      shape: new Border.all(
        // 设置边框样式
        color: Colors.deepPurple,
        width: 4.0,
        style: BorderStyle.solid,
      ),
      // 高亮时的浮动距离（可以尝试将该值设置的比elevation小，看看体验）
      //highlightElevation: 5.0,
      //disabledElevation: 50.0,
      // 正常情况下浮动的距离，目前已经失效
      // elevation: 15.0,
      //animationDuration: new Duration(
        // 过程时间，最容易观察的是从elevation到highlightElevation，或者相反过程，但是前提是要彻底的按下去，注意其影子的变化
        //seconds: 5,
      //),
      // FlatButton 的点击事件
      onPressed: () {
        // Perform some action
        //_showMessage('点击了 FLAT BUTTON ', context);
      },
      // 改变高亮颜色回掉函数，一个按钮会触发两次，按下后改变时触发一次，松手后恢复原始颜色触发一次
      // 参数 bool，按下后true，恢复false
      onHighlightChanged: (isClick) {
        print(isClick);
      }
  );
}
