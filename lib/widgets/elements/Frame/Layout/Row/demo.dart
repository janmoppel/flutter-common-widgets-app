import 'package:flutter/widgets.dart';


/**
 * Author: xiaojia.dxj
 * Date: 2018/11/22
 * Email: xiaojia.dxj@alibaba-inc.com
 * LastUpdateTime: 2018/11/22
 * LastUpdateBy: xj.deng
 *
 * Describle:Row
 */
class RowMainAxisAlignment extends StatelessWidget {
  final MainAxisAlignment status;
  final CrossAxisAlignment crossStatus;

  const RowMainAxisAlignment(MainAxisAlignment this.status,
      CrossAxisAlignment this.crossStatus) : super();

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: status,
      children: <Widget>[
        Container(
          color: Color(0xfffce4ec),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          color: Color(0xfff8bbd0),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          color: Color(0xfff48fb1),
          width: 90.0,
          height: 50.0,
        ),
      ],
    );
  }
}

class RowLayout extends StatelessWidget {
  const RowLayout() : super();

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Container(
          margin: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xfffce4ec),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          margin: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xfff8bbd0),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          margin: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xfff48fb1),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          margin: new EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xfff06292),
          width: 90.0,
          height: 50.0,
        ),
      ],
    );
  }
}
