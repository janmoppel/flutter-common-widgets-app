import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/spacing/Padding';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Padding',
      child: Container(
        color: Colors.blueAccent,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.amberAccent,
          ),
        ),
      ),
      docUrl: 'https://docs.flutter.io/flutter/widgets/Padding-class.html',
      desc: '通过给定的padding值来隔开子组件，\n通过EdgeInsets 类来计算 padding的大小,其实我们可以理解为 Padding 即为 Container+padding',
      codeUrl:
          'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/yifeng-0.0.4/lib/widgets/elements/Frame/spacing/Padding/index.dart',
    );
  }
}
