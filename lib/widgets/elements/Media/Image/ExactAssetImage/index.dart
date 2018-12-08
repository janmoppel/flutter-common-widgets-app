/*
 * @Author: 一凨 
 * @Date: 2018-12-08 13:29:34 
 * @Last Modified by: 一凨
 * @Last Modified time: 2018-12-08 14:12:21
 */
import 'package:flutter/material.dart';
import '../../../../../common/widget_demo.dart';
import './exact_asset_image_demo.dart';

const contentText0 = '''
### **简介**
> 类似带有scale属性的AssetImage

从```Image.asset```源码中可以看到

```
  Image.asset(String name, {
    Key key,
    AssetBundle bundle,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    double scale,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    String package,
    this.filterQuality = FilterQuality.low,
  }) : image = scale != null
         ? ExactAssetImage(name, bundle: bundle, scale: scale, package: package)
         : AssetImage(name, bundle: bundle, package: package),
       assert(alignment != null),
       assert(repeat != null),
       assert(matchTextDirection != null),
       super(key: key);
```
''';

const contentText1 = '''
### **基本使用**
- 使用方法与AssetImage类似
- 可以理解为带有scale属性的AssetImage
''';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Media/Image/ExactAssetImage';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return WidgetDemo(
      contentList: [
        contentText0,
        contentText1,
        ExactAssetImageDemo(),
      ],
      title:'ExactAssetImage',
      codeUrl: 'elements/Media/Image/ExactAssetImage/exact_asset_image_demo.dart',
      docUrl: 'https://docs.flutter.io/flutter/painting/ExactAssetImage-class.html',
    );
  }
}
