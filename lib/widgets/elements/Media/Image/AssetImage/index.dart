/*
 * @Author: 一凨 
 * @Date: 2018-11-16 15:09:12 
 * @Last Modified by:   一凨 
 * @Last Modified time: 2018-11-16 15:09:12 
 */
import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const _assetImageDesc0 = '''
# test
> test

  ```
  alert(1)
  ```
''';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Media/Image/AssetImage';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      child: _buildContent(),
      title: 'AssetImage',
      desc: 'AssetImage 使用介绍',
      docUrl: 'https://docs.flutter.io/flutter/painting/AssetImage-class.html',
      codeUrl: '',
    );
  }

  Widget _buildContent() {
    return Container(
      child: Column(
        children: <Widget>[
          MarkdownBody(data:_assetImageDesc0)
        ],
      ),
    );
  }
}
