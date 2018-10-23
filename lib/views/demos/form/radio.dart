import 'package:flutter/material.dart';
class RadioDemo extends StatelessWidget {
  static String routerName = '/form/radio';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:  new AppBar(
          title: new Text('radio Demo'),
        ),
        body: new Center(
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Text("radio demo"),
                new Radio(
                    key: Key('radio'),
                    value:'3',
                    groupValue: '3',
                    onChanged: (v) {
                      print('v > ${v}');
                    }
                ),
              ],
            )
          ),
        )
    );
  }
}

