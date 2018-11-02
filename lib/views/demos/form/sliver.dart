import 'package:flutter/material.dart';

class SliverDemo extends StatefulWidget {
  static String routerName = '/form/sliver';

  _SliverDemo createState() => _SliverDemo();
}
class _SliverDemo extends State<SliverDemo> {
  double percent = 0.0;
  int _dollars = 25;
  onSliderChange(BuildContext context, String value) {

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:  new AppBar(
          title: new Text('radio Demo'),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                new Text("sliver demo ${percent.toStringAsFixed(3)}"),
                new Slider(
                    label: percent.toStringAsPrecision(3),
                    activeColor:Colors.red,
                    max: 100,
                    min: 0,
                    divisions: 100,
                    inactiveColor: Colors.green,
                    value: percent,
                    onChanged: (v) {
                      setState(() {
                        percent = v;
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      print("semanticFormatterCallback $newValue");
                      return '$newValue dollars';
                    },
                ),
              ],
            );
          }
        )

    );
  }
}

