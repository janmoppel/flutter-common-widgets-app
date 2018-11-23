import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_rookie_book/common/widget-demo.dart';

const String _Text0 = """### **简介**
> Column 是一个将其孩子显示在竖直方向数组的小部件，于Row相对
- 将其孩子填充可用的竖直水平空间，默认竖直空间无法滚动，如有很多children，竖直空间饱和无法放置，你可以使用listView搭配使用
- 如果你只有一个child，只需要使用对齐（Align）或者居中（Center）来展示child

**注意：属性在固定空间有效**
> mainAxisSize 属性
- 一行的高度是有mainAxisSize属性控制，默认是max
- mainAxisSize: MainAxisSize.min,一行的宽度是孩子传入的约束
- mainAxisSize: MainAxisSize.max,一行的宽度的最大宽度是传入的约束。
> mainAxisAlignment属性

-    MainAxisAlignment.spaceEvenly/spaceAround/spaceBetween,
- spaceEvenly：将主轴方向空白区域均分，使得children之间空间相等，包括首尾childre
- spaceAround：将主轴方向空白区域均分，使得children之间空间相等，但是首尾childre的空白部分为一半
- spaceBetween：将主轴方向空白区域均分，使得children之间空间相等，但是首尾childre靠近收尾，没有空细逢

-    MainAxisAlignment.start/end/center,
- start：将children放置在主轴起点方向
- end：将children放置在主轴末尾方向
- center：将children放置在主轴中间方向

> CrossAxisAlignment 属性
-  crossAxisAlignment: CrossAxisAlignment.center/end/start,
- 即，根据设定的位置交叉对齐
- center/end/start: children在交叉轴上居中/末端/起点 对齐展示
- stretch：让children填满交叉轴方向
- baseline：在交叉轴方向，使得于这个baseline对齐，如果主轴是垂直的，那么这个值是当作开始
""";

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Layout/Column';

  @override
  State<StatefulWidget> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Column',
      desc: 'Layout-Column 使用',
      codeUrl:'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/sanlu-0.0.4/lib/widgets/elements/Frame/Layout/Column/index.dart',
      docUrl: 'https://docs.flutter.io/flutter/widgets/Column-class.html',
      child: new Container(
        child: _ColumnCreate(),
      ),
    );
  }

  Column _ColumnCreate() {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        MarkdownBody(
          data: _Text0,
        ),
        Container(
          color: Color(0xfffce4ec),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          color: Color(0xfff8bbd0),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          color: Color(0xfff48fb1),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          color: Color(0xfff06292),
          width: 90.0,
          height: 50.0,
        ),

        Text('We move under cover and we move as one'),
        Text('Through the night, we have one shot to live another day'),
        Text('We cannot let a stray gunshot give us away'),
        Text('We will fight up close, seize the moment and stay in it'),
        Text('It’s either that or meet the business end of a bayonet'),
        Text('The code word is ‘Rochambeau,’ dig me?'),
        Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.0)),
      ],
    );
  }
}
