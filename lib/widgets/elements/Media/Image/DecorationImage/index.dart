/*
 * @Author: 一凨 
 * @Date: 2018-11-16 15:09:12 
 * @Last Modified by: 一凨
 * @Last Modified time: 2018-11-16 15:12:39
 */
import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const _assetImageDesc0 = '''
> 修饰Box的图片


一般配合BoxDecoration的img属性使用,设置背景图片

也可以配合paintImage使用

## 背景图
''';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Media/Image/DecorationImage';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      child: _buildContent(),
      codeUrl:
          'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/develop/lib/widgets/elements/Media/Image/DecorationImage/index.dart?1542705856254',
      docUrl:
          'https://docs.flutter.io/flutter/painting/DecorationImage-class.html',
      desc: 'DecorationImage 使用介绍',
      title: 'DecorationImage',
    );
  }

  Widget _buildContent() {
    return Column(
      children: <Widget>[
        MarkdownBody(data: _assetImageDesc0),
        Container(
          child: Center(
            child: Text(
              'Container',
              style: TextStyle(color: Colors.red),
            ),
          ),
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
                image: AssetImage('assets/images/food02.jpeg'),
                fit: BoxFit.cover),
          ),
          margin: const EdgeInsets.only(top: 10.0),
        )
      ],
    );
  }
}
