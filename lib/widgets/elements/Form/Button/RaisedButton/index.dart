/**
 * Created with 菜鸟手册.
 * User: 一晟
 * Date: 2018/11/14
 * Time: 下午4:31
 * email: zhu.yan@alibaba-inc.com
 * target: RaisedButton 的示例
 * 对应文档地址:https://docs.flutter.io/flutter/material/RaisedButton-class.html
 */
import '../../../../../common/widget-demo.dart';
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';

const String _raisedTitle =
    'Raised button 示例';

const String _raisedText0 =
"""### **简介**
> Raised button “凸起按钮”
- Raised button 基于  a Material widget 窗口小部件，按下按钮时，Material.elevation 会增加。
- 使用 Raised button 可将尺寸添加到大多数平面布局中。
- 例如在复杂的内容列表中，或在宽阔的空间中。避免在已经提出的内容（例如对话框或卡片）上使用 Raised button 。
""";

const String _raisedText1 =
"""### **默认 RaisedButton**
> 参数的默认的按钮和禁用按钮
- 如果onPressed回调为null，则该按钮将被禁用，不会对触摸做出反应，并且将按 disabledColor 属性而不是color属性指定的颜色进行着色。
- 如果您尝试更改按钮的颜色并且没有任何效果，请检查您是否正在传递非null onPressed处理程序。""";


const String _raisedText2 =
"""### **默认 RaisedButton.icon**
> 按钮图标和标签的小部件创建文本按钮。""";

const String _raisedText3 =
"""### **自定义 RaisedButton**
> 更改项参数的自定义,比如:边框，点击效果，内容文字,颜色,圆角等
- Raised buttons 按钮具有全帽标签，一些内部填充和一些定义的尺寸。
- 如果您想要水龙头的墨水效果，但又不想使用按钮，请考虑直接使用InkWell。
- Raised buttons 的最小尺寸为88.0×36.0，可以用ButtonTheme 覆盖。
- 通过 shape 属性的设置，改变边框样式和圆角。
""";

class Demo extends StatefulWidget {
  static const String routeName = '/element/Form/Button/RaisedButton';

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String buttonShapeType = 'border'; // 边框类型
  void setButtonShapeType(){
    String _buttonShapeType = (buttonShapeType == 'border') ? 'radius' : 'border';
    this.setState((){
      buttonShapeType = _buttonShapeType;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'RaisedButton',
      desc: _raisedTitle,
      codeUrl: 'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/yifeng-0.0.4/lib/widgets/elements/Form/Button/RaisedButton/index.dart',
      child: allRaisedButtons(context,this),
      docUrl: 'https://docs.flutter.io/flutter/material/RaisedButton-class.html',
    );
  }
}

/**
 * 所有的 RaisedButton 按钮
 */
Widget allRaisedButtons(BuildContext context,_DemoState that){
  final ShapeBorder buttonShape = drawShape(that.buttonShapeType);
  return Container(
    //padding: new EdgeInsets.only(bottom: 20.0, top: 20.0, left: 0, right: 0),
      child: Column(
        //mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            MarkdownBody(data: _raisedText0),
            textAlignBar(_raisedText1),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                RaisedButtonDefault(context),
                SizedBox(width: 20.0), // 间距
                RaisedButtonDefault(context, false),
              ],
            ),
            textAlignBar(_raisedText2),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButtonIconDefault(context),
                RaisedButtonIconDefault(context, false),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButtonIconDefault(context, true, Icons.android),
                RaisedButtonIconDefault(context, true, Icons.announcement),
              ],
            ),
            textAlignBar(_raisedText3),
            SizedBox(height: 10.0),
            RaisedButtonCustom(context,'主要按钮',Colors.blue,buttonShape),
            SizedBox(height: 10.0),
            RaisedButtonCustom(context,'成功按钮',Colors.green,buttonShape),
            SizedBox(height: 10.0),
            RaisedButtonCustom(context,'信息按钮',Colors.grey,buttonShape),
            SizedBox(height: 10.0),
            RaisedButtonCustom(context,'警告按钮',Colors.orange,buttonShape),
            SizedBox(height: 10.0),
            RaisedButtonCustom(context,'危险按钮',Colors.pink,buttonShape),
            SizedBox(height: 10.0),
            RaisedButtonCustom(context, '点击切换，按钮的圆角', Colors.blue, buttonShape,
                    () => that.setButtonShapeType()),
            SizedBox(height: 20.0)
          ])
  );
}

/*
  * alert 弹框
  * context:容器的父级
  * */
void _showMessage(String name, BuildContext context) {
  showDialog(
    // alert 的父级
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
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
          ]);
    }
  );
}

/*
* 带align的text
* */
Widget textAlignBar(String txt){
  //style: new TextStyle(fontSize: 15.5, height: 1.2),textAlign:TextAlign.left
  return new Align(
      alignment: FractionalOffset.centerLeft,
      child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            MarkdownBody(data: txt)
            //new Text(txt, style: new TextStyle(fontSize: 15.5,height: 1.2,color:Colors.blue),textAlign:TextAlign.left)
          ])
  );
}

/*
* RaisedButton 默认按钮的实例
* isDisabled:是否是禁用
* */
Widget RaisedButtonDefault(BuildContext context, [bool isDisabled = true]) {
  return RaisedButton(
    // 文本内容
      child: const Text('默认按钮', semanticsLabel: 'FLAT BUTTON 1'),
      onPressed: isDisabled ? () {
      } : null
  );
}

/*
* 绘制边框信息,比如是否有边框,是否是圆角
* */
ShapeBorder drawShape(String type){
  final Color _color = _randomColor();
  final borderWidth = Random.secure().nextInt(5).toDouble();
  final radiusWidth = Random.secure().nextInt(50).toDouble();

  switch(type){
    case 'border':
      return Border.all(
        // 设置边框样式
        width: borderWidth,
        color: _color,
        style: BorderStyle.solid,
      );
      break;
    case 'radius':
      return RoundedRectangleBorder(
        side:new BorderSide( // 保留原来的边框样式
          width: borderWidth,
          color: _color,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(radiusWidth),
          topLeft: Radius.circular(radiusWidth),
          bottomLeft: Radius.circular(radiusWidth),
          bottomRight: Radius.circular(radiusWidth),
        ),
      );
      break;
    default:
      return null;
  }
}

/*
* 创建随机颜色
* */
Color _randomColor() {
  var red = Random.secure().nextInt(255);
  var greed = Random.secure().nextInt(255);
  var blue = Random.secure().nextInt(255);
  return Color.fromARGB(255, red, greed, blue);
}


/*
* RaisedButton.icon 默认按钮的实例
* Create a text button from a pair of widgets that serve as the button's icon and label
* isDisabled:是否是禁用
* */
Widget RaisedButtonIconDefault(BuildContext context, [bool isDisabled = true, IconData icon]) {
  final _icon = (icon is IconData) ? icon : Icons.add_circle;
  return RaisedButton.icon(
    // 文本内容
      icon: Icon(_icon, size: 25.0,color:_randomColor()),
      label: Text('默认按钮', semanticsLabel: 'FLAT BUTTON 2'),
      onPressed: isDisabled ? () {
        //_showMessage('点击了 FLAT BUTTON ', context);
      } : null
  );
}

/*
* RaisedButton 自定义的实例
* */
Widget RaisedButtonCustom(BuildContext context,
    [
      String txt = '自定义按钮',
      Color color = Colors.blueAccent,
      ShapeBorder shape,
      VoidCallback onPressed
    ]) {
  final _onPressed = onPressed;
  return RaisedButton(
    // 文本内容
      child: Text(txt, semanticsLabel: 'FLAT BUTTON 2'),
      // 按钮颜色
      color: color,
      // 按钮亮度
      colorBrightness: Brightness.dark,
      // 高亮时的背景色
      //highlightColor: Colors.yellow,
      // 失效时的背景色
      disabledColor: Colors.grey,
      // 该按钮上的文字颜色，但是前提是不设置字体自身的颜色时才会起作用
      textColor: Colors.white,
      // 按钮失效时的文字颜色，同样的不能使用文本自己的样式或者颜色时才会起作用
      disabledTextColor: Colors.grey,
      // 按钮主题,主要用于与ButtonTheme和ButtonThemeData一起使用来定义按钮的基色,RaisedButton，RaisedButton，OutlineButton，它们是基于环境ButtonTheme配置的
      //ButtonTextTheme.accent，使用模版颜色的;ButtonTextTheme.normal，按钮文本是黑色或白色取决于。ThemeData.brightness;ButtonTextTheme.primary，按钮文本基于。ThemeData.primaryColor.
      textTheme: ButtonTextTheme.normal,
      // 按钮内部,墨汁飞溅的颜色,点击按钮时的渐变背景色，当你不设置高亮背景时才会看的更清楚
      splashColor: Colors.deepPurple,
      // 抗锯齿能力,抗锯齿等级依次递增,none（默认),hardEdge,antiAliasWithSaveLayer,antiAlias
      clipBehavior: Clip.antiAlias,
      padding: new EdgeInsets.only(
          bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
      shape: (shape is ShapeBorder) ? shape : new Border.all(
        // 设置边框样式
        color: Colors.grey,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      // RaisedButton 的点击事件
      onPressed: () {
        // Perform some action
        if (_onPressed is VoidCallback) {
          _onPressed();
        }
      },
      // 改变高亮颜色回掉函数，一个按钮会触发两次，按下后改变时触发一次，松手后恢复原始颜色触发一次
      // 参数 bool，按下后true，恢复false
      onHighlightChanged: (isClick) {
        print(isClick);
      }
  );
}

