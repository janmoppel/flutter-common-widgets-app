import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Expanded/Expanded';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Expanded',
      desc: '用于撑开Row、Column或者Flex子widget,使用Expanded 可以使 Row、Column或者Flex的子项能够填充主轴的全部可用空间。如果存在多个子项，则根据 flex 属性来划分可用空间。 Expanded widget 必须是Row,Column或者Flex的后代，并且从Expanded widget到其封闭的Row、Column或Flex的路径必须仅包含StatelessWidget或StateFulWidget。',
      codeUrl: 'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/yifeng-0.0.4/lib/widgets/elements/Frame/Expanded/Expanded/index.dart',
      child: Column(
        children: <Widget>[
          Text('Expanded'),
          new Row(children: <Widget>[
            new RaisedButton(
              onPressed: () {
                print('点击红色按钮事件');
              },
              color: const Color(0xffcc0000),
              child: new Text('红色按钮'),
            ),
            new Expanded(
              flex: 1,
              child: new RaisedButton(
                onPressed: () {
                  print('点击黄色按钮事件');
                },
                color: const Color(0xfff1c232),
                child: new Text('黄色按钮'),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                print('点击粉色按钮事件');
              },
              color: const Color(0xffea9999),
              child: new Text('粉色按钮'),
            ),
          ]),
          Text('Flexible'),
          new Row(children: <Widget>[
            new RaisedButton(
              onPressed: () {
                print('点击红色按钮事件');
              },
              color: const Color(0xffcc0000),
              child: new Text('红色按钮'),
            ),
            new Flexible(
              flex: 1,
              child: new RaisedButton(
                onPressed: () {
                  print('点击黄色按钮事件');
                },
                color: const Color(0xfff1c232),
                child: new Text('黄色按钮'),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                print('点击粉色按钮事件');
              },
              color: const Color(0xffea9999),
              child: new Text('粉色按钮'),
            ),
          ]),
        ],
      ),
      docUrl: 'https://docs.flutter.io/flutter/widgets/Expanded-class.html',
    );
  }
}
