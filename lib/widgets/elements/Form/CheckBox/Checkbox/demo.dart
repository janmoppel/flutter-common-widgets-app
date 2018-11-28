/**
 * Created with Android Studio.
 * User: 一晟
 * Date: 2018/11/22
 * Time: 上午12:03
 * email: zhu.yan@alibaba-inc.com
 * tartget: Checkbox 的示例
 */
import 'dart:math';
import 'package:flutter/material.dart';

var selectValue = false;

/*
* Checkbox 默认按钮的实例
* isDisabled:是否是禁用，isDisabled 默认为true
* */
class CheckboxDefault extends StatelessWidget {
  final bool isDisabled;
  final widget;
  final parent;

  const CheckboxDefault([this.widget,this.parent,bool this.isDisabled = true])
      : assert(isDisabled != null),
        super();

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: selectValue,
        onChanged: (bool bol) {
          parent.setState((){
            selectValue = bol;
          });
        }
    );
  }
}

/*
* Checkbox 自定义的实例
* */
//class CheckboxCustom extends StatelessWidget {
//  final String txt;
//  final Color color;
//  final ShapeBorder shape;
//  final VoidCallback onPressed;
//
//  const CheckboxCustom(
//      [String this.txt = '自定义按钮',
//      Color this.color = Colors.blueAccent,
//      ShapeBorder this.shape,
//      VoidCallback this.onPressed])
//      : super();
//
//  @override
//  Widget build(BuildContext context) {
//    final _onPressed = onPressed;
//    return Checkbox(
//        // 文本内容
//        child: Text(txt, semanticsLabel: 'FLAT BUTTON 2'),
//        // 边框的颜色,颜色也可以走主题色 Theme.of(context).primaryColor
//        borderSide:new BorderSide(color: _randomColor(),width:Random.secure().nextInt(10).toDouble()),
//        // 按钮颜色
//        color: _randomColor(),
//        // 按钮失效时边框颜色
//        disabledBorderColor: Colors.red,
//        highlightedBorderColor:Colors.black54,
//        // 高亮时的背景色
//        highlightColor: Colors.yellow,
//        // 失效时的背景色
//        //disabledColor: Colors.grey,
//        // 该按钮上的文字颜色，但是前提是不设置字体自身的颜色时才会起作用
//        textColor: _randomColor(),
//        // 按钮失效时的文字颜色，同样的不能使用文本自己的样式或者颜色时才会起作用
//        disabledTextColor: _randomColor(),
//        // 按钮主题,主要用于与ButtonTheme和ButtonThemeData一起使用来定义按钮的基色,Checkbox，Checkbox，Checkbox，它们是基于环境ButtonTheme配置的
//        //ButtonTextTheme.accent，使用模版颜色的;ButtonTextTheme.normal，按钮文本是黑色或白色取决于。ThemeData.brightness;ButtonTextTheme.primary，按钮文本基于。ThemeData.primaryColor.
//        textTheme: ButtonTextTheme.normal,
//        // 按钮内部,墨汁飞溅的颜色,点击按钮时的渐变背景色，当你不设置高亮背景时才会看的更清楚
//        splashColor: _randomColor(),
//        // 抗锯齿能力,抗锯齿等级依次递增,none（默认),hardEdge,antiAliasWithSaveLayer,antiAlias
//        clipBehavior: Clip.antiAlias,
//        padding: new EdgeInsets.only(bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
//        //高亮时候的阴影
//        highlightElevation: 10.0,
//        shape: shape, // 在Outline 里只能设置圆角,边框用borderSide
//        // Checkbox 的点击事件
//        onPressed: () {
//          // Perform some action
//          if (_onPressed is VoidCallback) {
//            _onPressed();
//          }
//        });
//  }
//}

Color _randomColor() {
  var red = Random.secure().nextInt(255);
  var greed = Random.secure().nextInt(255);
  var blue = Random.secure().nextInt(255);
  return Color.fromARGB(255, red, greed, blue);
}
