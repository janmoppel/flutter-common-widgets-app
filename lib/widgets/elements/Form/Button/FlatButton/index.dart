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

const String _flatTitle =
'简介:\nFlatButton 属于扁平 button 部件\n';

const String _flatText1 =
'1.参数的默认的按钮和禁用按钮\n';

const String _flatText2 =
'2.按钮图标和标签的小部件创建文本按钮。\n';

const String _flatText3 =
'3.更改项参数的自定义,比如:边框，点击效果，内容文字颜色等。\n';



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
        body: Container(
            padding: new EdgeInsets.only(bottom: 20.0, top: 20.0, left: 30.0, right: 30.0),
              child: Column(
                //mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  textAlignBar(new Text(_flatTitle, style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign:TextAlign.left)),
                  textAlignBar(new Text(_flatText1, style: new TextStyle(fontSize: 18.0,color:Colors.blue),textAlign:TextAlign.left)),
                  ButtonBar(
                    alignment:MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      FlatButtonDefault(context),
                      SizedBox(width: 20.0),// 间距
                      FlatButtonDefault(context,false),
                    ],
                  ),
                  textAlignBar(new Text(_flatText2, style: new TextStyle(fontSize: 18.0,color:Colors.blue),textAlign:TextAlign.left)),
                  ButtonBar(
                    alignment:MainAxisAlignment.spaceAround,
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlatButtonIconDefault(context),
                      FlatButtonIconDefault(context,false),
                    ],
                  ),
                  textAlignBar(new Text(_flatText3, style: new TextStyle(fontSize: 18.0,color:Colors.blue),textAlign:TextAlign.left)),
                  FlatButtonCustom(context),
                  FlatButtonCustom(context),
                  FlatButtonCustom(context),
                  FlatButtonCustom(context),
                ])
        )
    );
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
* 带align的text
* */
Widget textAlignBar(Text text){
  return new Align(
    alignment: FractionalOffset.centerLeft,
    child: Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        text
      ])
  );
}

/*
* FlatButton 默认按钮的实例
* isDisabled:是否是禁用
* */
Widget FlatButtonDefault(BuildContext context, [bool isDisabled = true]) {
  return FlatButton(
      // 文本内容
      child: const Text('默认按钮', semanticsLabel: 'FLAT BUTTON 1'),
      onPressed: isDisabled ? () {
        //_showMessage('点击了 FLAT BUTTON ', context);
      } : null
  );
}

/*
* FlatButton.icon 默认按钮的实例
* Create a text button from a pair of widgets that serve as the button's icon and label
* isDisabled:是否是禁用
* */
Widget FlatButtonIconDefault(BuildContext context, [bool isDisabled = true]) {
  return FlatButton.icon(
    // 文本内容
      icon: const Icon(Icons.add_circle, size: 18.0),
      label: const Text('默认按钮', semanticsLabel: 'FLAT BUTTON 2'),
      onPressed: isDisabled ? () {
        //_showMessage('点击了 FLAT BUTTON ', context);
      } : null
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
