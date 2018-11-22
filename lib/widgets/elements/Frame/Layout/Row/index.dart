import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_rookie_book/common/widget-demo.dart';
import './demo.dart' as row;

const String _Text0 = """### **简介**
> Row 是一个将其孩子显示在水平数组的小部件
- 将其孩子填充可用的横向水平空间，一行高度是孩子们的最大高度（即：总是满足传入的垂直约束）
- 如果你只有一个孩子，只需要考虑使用对其或者中间位置，如果多个孩子，注意扩展水平空间，可以将孩子封装在一个扩展部件里面
- 当我们看到行有黄色和黑色条纹警告时候，说明行已经溢出，当行溢出，行之间当空间将没有任何空间可供扩展。

""";

const String _Text_title = """### **特性**
> mainAxisSize 属性
- 一行的高度是有mainAxisSize属性控制，默认是max
- mainAxisSize: MainAxisSize.min,一行的宽度是孩子传入的约束
- mainAxisSize: MainAxisSize.max,一行的宽度的最大宽度是传入的约束。
> mainAxisAlignment属性
""";
const String _Text1 = """
- MainAxisAlignment.spaceEvenly/spaceAround/spaceBetween,
- spaceEvenly：将主轴方向空白区域均分，使得children之间空间相等，包括首尾childre
- spaceAround：将主轴方向空白区域均分，使得children之间空间相等，但是首尾childre的空白部分为一半
- spaceBetween：将主轴方向空白区域均分，使得children之间空间相等，但是首尾childre靠近收尾，没有空细逢

""";
const String _Text2 = """
- MainAxisAlignment.start/end/center,
- start：将children放置在主轴起点方向
- end：将children放置在主轴末尾方向
- center：将children放置在主轴中间方向

""";

const String _Text3 = """
> CrossAxisAlignment 属性
-  crossAxisAlignment: CrossAxisAlignment.center/end/start,
- 即，根据设定的位置交叉对齐
- center/end/start: children在交叉轴上居中/末端/起点 对齐展示
- stretch：让children填满交叉轴方向
- baseline：在交叉轴方向，使得于这个baseline对齐，如果主轴是垂直的，那么这个值是当作开始
""";

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Layout/Row';

  @override
  State<StatefulWidget> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Row',
      desc: 'Layout-Row 使用',
      codeUrl:
          'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/yifeng-0.0.4/lib/widgets/elements/Frame/Table/Table/index.dart',
      docUrl: 'https://docs.flutter.io/flutter/widgets/Row-class.html',
      child: new Container(
        child: _RowCreate(),
      ),
    );
  }

  Column _RowCreate() {
    return new Column(
      children: <Widget>[
        MarkdownBody(data: _Text0),
        row.RowLayout(),
        Row(
          children: <Widget>[
            Expanded(
              child:
                  Text('Deliver features faster', textAlign: TextAlign.center),
            ),
            Expanded(
              child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain, // otherwise the logo will be tiny
                child: const FlutterLogo(),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            const FlutterLogo(),
            const Expanded(
              child: const Text(
                  'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
            ),
            const Icon(Icons.sentiment_very_satisfied),
          ],
        ),
        MarkdownBody(data: _Text_title),

        MarkdownBody(data: _Text2),
        row.RowMainAxisAlignment(MainAxisAlignment.start,null),
        SizedBox(height: 10.0),
        row.RowMainAxisAlignment(MainAxisAlignment.center,null),
        SizedBox(height: 10.0),
        row.RowMainAxisAlignment(MainAxisAlignment.end,null),
        SizedBox(height: 10.0),
        MarkdownBody(data: _Text1),
        row.RowMainAxisAlignment(MainAxisAlignment.spaceEvenly,null),
        SizedBox(height: 10.0),
        row.RowMainAxisAlignment(MainAxisAlignment.spaceAround,null),
        SizedBox(height: 10.0),
        row.RowMainAxisAlignment(MainAxisAlignment.spaceBetween,null),
        SizedBox(height: 10.0),

        MarkdownBody(
          data: _Text3,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: new EdgeInsets.only(bottom: 20.0),
              color: Color(0xfffce4ec),
              width: 90.0,
              height: 100.0,
            ),
            Container(
              color: Color(0xfff8bbd0),
              margin: new EdgeInsets.only(bottom: 20.0),
              width: 90.0,
              height: 150.0,
            ),
            Container(
              margin: new EdgeInsets.only(bottom: 20.0),
              color: Color(0xfff48fb1),
              width: 90.0,
              height: 50.0,
            ),
          ],
        ),
      ],
    );
  }
}
