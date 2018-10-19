import "package:flutter/material.dart";
import "all.dart";
class DemosPoints {
  final String title;
  final IconData icon;
  final String routerName;
  final WidgetBuilder buildRouter;

  const DemosPoints({
    this.title,
    this.icon,
    this.routerName,
    this.buildRouter
  }) : assert(title != null);
  String toString() {
    return '$runtimeType ($title $routerName)';
  }
}

class DemosCategory {
  final String name;
  final String icon;
  const DemosCategory(this.name, this.icon);

  @override
  String toString() {
    return '$runtimeType ($name)';
  }
}

List<DemosPoints> getDemosPoints() {
  final List<DemosPoints> demosPoints = <DemosPoints>[
    DemosPoints(
      title: 'sliver',
      icon: Icons.add,
      routerName: '',
      buildRouter: (BuildContext context) => SliverDemo(),
    ),
    DemosPoints(
      title: 'radio',
      icon: Icons.category,
      buildRouter: (BuildContext context) => RadioDemo()
    )
  ];
  return demosPoints;
}
