/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 22/11/2018
 * Time: 19:37
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

import 'package:flutter/material.dart';

class RadioADemo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<RadioADemo> {

  Widget build(BuildContext context) {
    return  (
      new Radio(
        key: Key('radio'),
        value:'3',
        groupValue: '3',
        onChanged: (v) {
          print('v > ${v}');
        }
      )
    );
  }
}
