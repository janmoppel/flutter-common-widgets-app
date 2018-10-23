import 'package:flutter/material.dart';
import '../../routers/application.dart';
import 'home.dart';


class CategoryHome extends StatefulWidget {
  CategoryHome(this.name);
  final String name;

  @override
  _CategoryHome createState() => new _CategoryHome();
}

class _CategoryHome extends State<CategoryHome> {
  String name;

  @override
  void initState() {
    super.initState();
    name = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.name;
    DemoCategory category = getCatetoryByName(widget.name);

    print("${widget.name} > ${getCatetoryByName(widget.name)} > $CategoryToDemos}");
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new Container(
            child: new CategoryList(CategoryToDemos[category])
        )
    );
  }
}

class CategoryList extends StatefulWidget {
  final demosPoints;
  CategoryList(this.demosPoints);
  _CategoryList createState() => new _CategoryList();

}

class _CategoryList extends State<CategoryList> {

  List<DemosPoint> demoPoints;

  initState() {
    super.initState();
    demoPoints = widget.demosPoints;
  }

  Widget build(BuildContext context) {
    print("CT> ${demoPoints}");
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //每行2个
          mainAxisSpacing: 0.0, //主轴(竖直)方向间距
          crossAxisSpacing: 0.0, //纵轴(水平)方向间距
          childAspectRatio: 0.8 //纵轴缩放比例
      ),
      itemCount: this.demoPoints.length,
      itemBuilder: (BuildContext context, int index) {
        print(this.demoPoints);
        return new ListItemWidget(this.demoPoints[index]);
      },
    );
  }
}


class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}


class ListItemWidget extends StatelessWidget {
  final DemosPoint demosPoint;

  ListItemWidget(this.demosPoint);

  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.green,
        child: Container(
            decoration:  new BoxDecoration(
              color: Colors.white,
              border: Border(
                right: const BorderSide(width: 1.0, color: const Color(0xFFFF000000)),
                bottom: const BorderSide(width: 1.0, color: const Color(0xFFFF000000)),
              ),
            ),
            child: new RaisedButton(
                onPressed: () {
                  Application.router.navigateTo(context, "${demosPoint.routerName}");
                },
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(
                      demosPoint.icon,
                    ),
                    Text(demosPoint.title),
                  ],
                )
            )
        )
    );
  }
}


