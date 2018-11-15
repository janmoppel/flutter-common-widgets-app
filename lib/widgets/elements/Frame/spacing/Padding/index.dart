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
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          color: Colors.amberAccent,
        ),
      ),
      docUrl: 'https://docs.flutter.io/flutter/widgets/Padding-class.html',
    );
  }
}
