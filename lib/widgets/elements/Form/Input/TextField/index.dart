/**
 * Created with 菜鸟手册.
 * User: 一晟
 * Date: 2018/11/14
 * Time: 下午4:31
 * email: zhu.yan@alibaba-inc.com
 * target: TextField 的示例
 * 对应文档地址:https://docs.flutter.io/flutter/material/TextField-class.html
 */
import '../../../../../common/widget-demo.dart';
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:flutter_markdown/flutter_markdown.dart';


const String _textFieldText0 =
"""### **简介**
> Text Field “文本字段”
- 文本字段允许用户输入文本，无论是硬件键盘还是屏幕键盘。
- 每当用户更改字段中的文本时，文本字段就会调用Onchange的回调。
- 如果用户指示他们在字段中输入完成（例如，通过按软键盘上的按钮），则文本字段调用onSubmitted回调。。
""";

const String _textFieldText1 =
"""### **默认 TextField**
> 参数的默认的按钮和禁用按钮
- 默认情况下，文本字段具有在文本字段下方绘制分隔符的修饰。
- 您可以使用装饰属性来控制装饰，例如通过添加标签或图标。如果将装饰属性设置为空，则将完全删除装饰，包括装饰引入的额外填充，以节省标签的空间。
- 如果装饰是非null（这是默认的），文本字段需要它的祖先之一是一个材质小部件。当文本字段被敲击时，墨水溅到材料上的油漆被触发。
- 若要将TeXFieldField集成到其他FieldFieldWrices窗体中，请考虑使用TeTFrimeField。""";

const String _textFieldText2 =
"""### **自定义 TextField**
> 实现稍微复杂点的效果，键盘就变成了数字优先，为输入框做一些其他的效果，如提示文字，icon、标签文字等
- 增加一个keyboardType属性，把keyboardType设置为 TextInputType.number ，让TextField获得焦点的时候弹出的键盘就变成了数字优先。
- 新增decoration属性，设置相关属性，可以发现当我们的TextField获得焦点时，图标会自动变色，提示文字会自动上移。
- onChanged是每次输入框内每次文字变更触发的回调，onSubmitted是用户提交而触发的回调。
- 每当用户改变输入框内的文字，都会在控制台输出现在的字符串.与onSubmitted用法相同。
""";

class Demo extends StatefulWidget {
  static const String routeName = 'elements/Form/Input/TextField';
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
      title: 'TextField',
      codeUrl: 'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/yifeng-0.0.4/lib/widgets/elements/Input/TextField/index.dart',
      child: renderAll(context,this),
      docUrl: 'https://docs.flutter.io/flutter/material/TextField-class.html',
    );
  }
}

Widget renderAll(BuildContext context,_DemoState that) {
  return Container(
      child: Column(
          children: <Widget>[
            MarkdownBody(data: _textFieldText0),
            SizedBox(height: 20.0),
            MarkdownBody(data: _textFieldText1),
            defaultTextField(),
            MarkdownBody(data: _textFieldText2),
            SizedBox(height: 20.0),
            customTextField()
          ]
      ));
}

/*
* 基本示例
* */
@override
Widget defaultTextField() {
  return new Container(
      padding: const EdgeInsets.all(30.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//文本是起始端对齐
          children: <Widget>[
            Text('下面是基本输入框：',style: TextStyle(fontSize: 15.5,height: 1.2,color:Colors.blue),textAlign:TextAlign.left),
            TextField()
          ])
  );
}

/*
* 稍微复杂些的 TextField
* */
Widget customTextField(){
  void _textFieldChanged(String str) {
    print(str);
  }
  return new Container(
      padding: const EdgeInsets.all(30.0),
      child:TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            icon: Icon(Icons.text_fields),
            labelText: '请输入你的姓名)',
            helperText: '请输入你的真实姓名',
      ),
      onChanged: _textFieldChanged,
      autofocus: false,
  ));
}
