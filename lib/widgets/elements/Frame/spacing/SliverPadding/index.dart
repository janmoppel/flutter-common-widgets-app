import 'package:flutter/material.dart';
import './product_list.dart';
import 'package:flutter_rookie_book/common/widget-demo.dart';

class Demo extends StatefulWidget {
  static const String routeName = '/element/Frame/spacing/SliverPadding';
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    print(products);
    return WidgetDemo(
      title: 'SliverPadding',
      desc: 'Flutter 中的Slivers大家族基本都是配合CustomScrollView来实现的，而 SliverPadding 其实也就是Slivers大家族中的一类padding，这里我们结合SliverList使用，padding作用于每一个item',
      codeUrl: 'https://github.com/alibaba-paimai-frontend/flutter-common-widgets-app/blob/dev/yifeng-0.0.4/lib/widgets/elements/Frame/spacing/SliverPadding/index.dart',
      child: new CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.fromLTRB(50.0,10.0,20.0,0.0),
            sliver: new SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildItem(context, products[index]);
              },
              childCount: products.length,
            ),
            ),
          )
        ],
      ),
      docUrl:
          'https://docs.flutter.io/flutter/widgets/SliverPadding-class.html',
    );
  }

  Widget _buildItem(BuildContext context,ProductItem product){
     return  Container(
      height: 100.0,
      margin: const EdgeInsets.only(bottom: 5.0),
      padding: const EdgeInsets.only(left: 10.0),
      color: Colors.blueGrey,
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: <Widget>[
            Positioned(
                right: 40.0,
                child: Card(
                  child: Center(
                    child: Text(
                      product.name,
                      style: Theme.of(context).textTheme.title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
            ClipRRect(
              child: SizedBox(
                width: 70.0,
                height: 70.0,
                child: Image.asset(
                  product.asset,
                  fit: BoxFit.cover,
                ),
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ],
        ),
    );
  }
}
