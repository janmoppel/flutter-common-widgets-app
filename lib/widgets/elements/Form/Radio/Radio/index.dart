/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 22/11/2018
 * Time: 19:17
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  Radio相关
 */

import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'demo.dart';
const introA = """
# Radio
> material design 风格的单选按钮
""";
class Demo extends StatefulWidget {
  static const String routeName = '/element/Form/Radio/index';
  _Demo createState() => _Demo();
}

class _Demo extends State<Demo> {
  String value;
  onChange(v) {
    this.setState(() {
      value = v;
    });
  }
  Widget build(BuildContext context) {
    return WidgetDemo(
      title: 'title',
      child:  new Column(
        children: <Widget>[
          MarkdownBody(data: introA),
          RadioADemo(),
          new Radio(
              key: Key('radio'),
              activeColor: Colors.red,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap ,
              value:'3',
              groupValue: value,
              onChanged: (v) {
                print('v > ${v}');
                onChange(v);
              }
          ),
          new Radio(
              activeColor: Colors.red,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap ,
              value:'2',
              groupValue: value,
              onChanged: (v) {
                print('v > ${v}');
                onChange(v);
              }
          )
        ],
      )
    );
  }
}
