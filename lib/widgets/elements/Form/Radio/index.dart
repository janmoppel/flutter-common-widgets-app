import '../../../../model/widget.dart';
import "package:flutter/material.dart";

import 'Radio/index.dart' as Radio;


List<WidgetPoint> widgetPoints = [
  WidgetPoint(
    name: 'Radio',
    routerName: Radio.Demo.routeName,
    buildRouter: (BuildContext context) => Radio.Demo(),
  ),

];