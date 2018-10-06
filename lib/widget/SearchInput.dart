import 'package:flutter/material.dart';
import '../common/Style.dart';

///搜索框
class SearchInput extends StatelessWidget {
  final ValueChanged<String> onChanged;

  final ValueChanged<String> onSubmitted;

  final VoidCallback onSubmitPressed;

  SearchInput(this.onChanged, this.onSubmitted, this.onSubmitPressed);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
          color:  Color(AppColor.white)
      ),
      padding: new EdgeInsets.only(left: 15.0, top: 6.0, right: 15.0, bottom: 6.0),
      child: new Row(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(right: 10.0, top: 3.0),
            child: new Icon(Icons.search, size: 20.0, color: Theme.of(context).primaryColorDark),
          ),
          new Expanded(
              child: new TextField(
                  autofocus: false,
                  decoration: new InputDecoration.collapsed(
                    hintText: '搜索 flutter 组件',
                    hintStyle: AppText.middleSubText,
                  ),
                  style: AppText.middleText,
                  onChanged: onChanged,
                  onSubmitted: onSubmitted)),
        ],
      ),
    );
  }
}
