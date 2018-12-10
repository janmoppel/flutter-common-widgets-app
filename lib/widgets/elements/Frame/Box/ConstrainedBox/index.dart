import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../../../../common/widget-demo.dart';


const String _Text = """### **ConstrainedBox**
> 添加额外的限制条件到child上
- 比如说，你限制child最小高度为50.0像素，就可以用constraints: const BoxConstraints(minHeight：50）
""";

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Box/ConstrainedBox';

  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'ConstrainedBox',
      codeUrl: '',
      child: _ConstrainedBoxCreate(),
      docUrl: 'https://docs.flutter.io/flutter/widgets/ConstrainedBox-class.html',
    );
  }

  Column _ConstrainedBoxCreate() {
    return new Column(
      children: <Widget>[
        MarkdownBody(
          data: _Text,
        ),
        ConstrainedBox(
          //制定一个指定大小的盒子，限定最大最小宽高
          constraints: const BoxConstraints(
            minWidth: 100.0,
            minHeight: 20.0,
            maxWidth: 500.0,
            maxHeight: 50.0,
          ),
          child: new Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            //child 宽高超过制定限制范围失效，效果宽/高=100区域
            width: 600.0,
            height: 250.0,
            child: new Text('ConstrainedBox'),
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
