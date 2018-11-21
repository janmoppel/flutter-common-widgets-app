/*
 * @Author: 一凨 
 * @Date: 2018-11-16 15:09:12 
 * @Last Modified by:   一凨 
 * @Last Modified time: 2018-11-16 15:09:12 
 */
import 'package:flutter/material.dart';
import '../../../../../common/widget-demo.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';

const _assetImageDesc0 = '''
> 将给定的Uint8List 缓冲区解码为图像，将其与给定的比例相关联

提供给MemoryImage后，不应更改提供的字节缓冲区，哟啊提供表示随时间变化的图像的ImageStream，可考虑创建ImageProvider的新子类，其load方法返回ImageStreamCompleter的子类，该子类可以处理多个图像

Image.memory 用于MemoryImage支持的Image的简写

## 读取展示bytes Image实例
''';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Media/Image/MemoryImage';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Uint8List bytes;

  void initState() {
    super.initState();
    rootBundle.load('assets/images/food01.jpeg').then((data) {
      if (mounted) {
        print(data);
        setState(() {
          bytes = data.buffer.asUint8List();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      child: _buildContent(bytes),
      title: 'MemoryImage',
      desc: 'MemoryImage 使用介绍',
      docUrl: 'https://docs.flutter.io/flutter/painting/MemoryImage-class.html',
      codeUrl:
          'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/develop/lib/widgets/elements/Media/Image/MemoryImage/index.dart?1542777213280',
    );
  }

  Widget _buildContent(bytes) {
    final decoration = new BoxDecoration(
      image: bytes == null
          ? null
          : new DecorationImage(
              image: new MemoryImage(bytes,scale: 1.0),
            ),
    );
    return Column(
      children: <Widget>[
        MarkdownBody(data: _assetImageDesc0),
        new Container(
          width: 300.0,
          height: 300.0,
          decoration: decoration,
        ),
      ],
    );
  }
}
