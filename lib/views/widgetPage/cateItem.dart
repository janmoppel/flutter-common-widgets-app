import 'package:flutter/material.dart';
import '../../components/widget_item.dart';
import '../../routers/application.dart';
import '../../model/cat.dart';

class CateItemList extends StatefulWidget {
  final Cat category;
  CateItemList({
    @required this.category
  });
  @override
  _CateItemList createState() => new _CateItemList(category);
}

class _CateItemList extends State<CateItemList> {
  // 上层传入
  final Cat category;
  // 一级菜单目录下的二级Cat集合
  List<Cat> firstChildList = new List();
  CatControlModel catControl = new CatControlModel();

  _CateItemList(this.category);

  @override
  initState() {
    getFirstChildCategoriesByParentId();
  }
  // 获取一层目录下的二级内容
  getFirstChildCategoriesByParentId() async {
    int parentId = category.id;
    // 构建查询条件
    Cat childCateCondition = new Cat(parentId: parentId);

    List<Cat> list = await catControl.getList(childCateCondition);
    if (list.isNotEmpty) {
      this.setState(() {
        this.firstChildList = list;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Row(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            new Expanded(
              child: new Container(
                color: Theme.of(context).secondaryHeaderColor,
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  category.name,
                  style: new TextStyle(
//                    color: Theme.of(context).secondaryHeaderColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        ChildCateories(firstChildList),
      ],
    );
  }
}



class ChildCateories extends StatelessWidget {
  final List<Cat> categories;
  ChildCateories(this.categories);

  // 分割数组, 每 $count 一组
  subListByCount(List<Cat> list, int count) {
    List<List<Cat>> result = [];
    for(var i=0;i < list.length;i += count){
      var start = i;
      var end = i + count;
      if (end > list.length) {
        end = list.length;
      }
      result.add(list.sublist(start,end));
    }
    return result;
  }

  Widget buildGrid(context) {
    List<Widget> tiles = [];
    List<List<Cat>> categorysList = this.subListByCount(categories, 3);

    Widget content;
    for (List<Cat> items in categorysList) {
      List<Widget> rows = [];
      for(Cat item in items) {
        rows.add(
          new Expanded(
            child: new WidgetItem(
              title: item.name,
              onTap: () {
              Application.router.navigateTo(context, "/category/${item.name}");
              },
            ),
          )

        );
      }
      tiles.add(
        new Container(
          color: Colors.red,
           height: 150.0,
           child:  new Row(
             children: rows
           ),
        )
      );
    }
    content = new Column(
      children: tiles,
    );
    return content;
  }
  buildEmpty() {
    return Container(
      child: Text("暂无数据"),
    );
  }
  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return this.buildEmpty();
    }
    return this.buildGrid(context);
  }


}
