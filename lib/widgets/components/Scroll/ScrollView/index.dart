/*
 * @Author: 一凨 
 * @Date: 2018-12-10 20:30:53 
 * @Last Modified by:   一凨 
 * @Last Modified time: 2018-12-10 20:30:53 
 */
import 'package:flutter/material.dart';
import '../../../../common/widget_demo.dart';

class Demo extends StatefulWidget {
  static const String routeName = '/components/Scroll/ScrollView';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('scroll'),
    );
  }
}