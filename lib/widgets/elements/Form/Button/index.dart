import '../../../../model/widget.dart';
import "package:flutter/material.dart";

import 'FlatButton/index.dart' as FlatButton;
import 'RaisedButton/index.dart' as RaisedButton;
import 'OutlineButton/index.dart' as OutlineButton;
import 'IconButton/index.dart' as IconButton;


List<WidgetPoint> widgetPoints = [
  WidgetPoint(
    name: 'FlatButton',
    routerName: FlatButton.Demo.routeName,
    buildRouter: (BuildContext context) => FlatButton.Demo(),
  ),
  WidgetPoint(
    name: 'RaisedButton',
    routerName: RaisedButton.Demo.routeName,
    buildRouter: (BuildContext context) => RaisedButton.Demo(),
  ),
  WidgetPoint(
    name: 'OutlineButton',
    routerName: OutlineButton.Demo.routeName,
    buildRouter: (BuildContext context) => OutlineButton.Demo(),
  ),
  WidgetPoint(
    name: 'IconButton',
    routerName: IconButton.Demo.routeName,
    buildRouter: (BuildContext context) => IconButton.Demo(),
  ),
];