import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/spacing/AnimatedPadding';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  double paddingValue;

  void initState() {
    super.initState();
    paddingValue = 10.0;
  }

  _changePadding() {
    if (paddingValue == 10.0) {
      setState(() {
        paddingValue = 100.0;
      });
    }else{
      setState(() {
        paddingValue = 10.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'AnimatedPadding',
      child: Column(children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.symmetric(horizontal: paddingValue, vertical: paddingValue),
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOut,
          child: Container(
            height: 200.0,
            color: Colors.blueAccent,
          ),
        ),
        RaisedButton(
          onPressed: _changePadding,
          child: Text('change padding'),
        )
      ]),
      docUrl:
          'https://docs.flutter.io/flutter/widgets/AnimatedPadding-class.html',
          desc: 'Padding 的动画版本，无论何时给定的更改，它都会在给定的持续时间内自动完成转换缩进',
          codeUrl: 'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/yifeng-0.0.4/lib/widgets/elements/Frame/spacing/AnimatedPadding/index.dart',
    );
  }
}
