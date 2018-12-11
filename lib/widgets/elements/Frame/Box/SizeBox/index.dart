import 'package:flutter/material.dart';
import '../../../../../common/widget_demo.dart';
import './demo.dart' as sizeBox;

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/Box/SizeBox';

  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {


  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'Table',
      codeUrl: 'elements/Frame/Box/SizedBox/demo.dart',
      contentList: [
        _SizeBoxCreate(),
      ],
      docUrl: 'https://docs.flutter.io/flutter/widgets/SizedBox-class.html',
    );
  }

  Column _SizeBoxCreate() {
    return new Column(
      children: <Widget>[
        new Text("SizedBox",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            )),
        new Row(
          children: <Widget>[
            sizeBox.SizeBoxDefault(),
            SizedBox(
              width: 130.0,
              height: 80.0,
              child: const Card(
                  child: Text(
                    'SizedBox',
                    textAlign: TextAlign.center,
                  ),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  color: Color(0xFFE57373)),
            ),
          ],
        ),
        SizedBox(
          width: 900.0,
          height: 50.0,
          child: const Card(
              child: Text(
                'SizedBox',
                textAlign: TextAlign.center,
              ),
              color: Color(0xFFEF5350)),
        ),
      ],
    );
  }
}