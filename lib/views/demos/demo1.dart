import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DemoComponent extends StatelessWidget {
  String name;
  DemoComponent(this.name);
  var selectItemValue;
  selectDate(BuildContext context) async {
    final DateTime _picked = await showDatePicker(
        context: context,
        initialDate: new DateTime(2016),
        firstDate: new DateTime(2015), lastDate: new DateTime(2018));
    if (_picked !=null) {
      print(_picked);
    }
  }

  List<DropdownMenuItem> generateItemList() {
    List<DropdownMenuItem> items = new List();
    DropdownMenuItem item1 = new DropdownMenuItem(
        value: '张三', child: new Text('张三'));
    DropdownMenuItem item2 = new DropdownMenuItem(
        value: '李四', child: new Text('李四'));
    DropdownMenuItem item3 = new DropdownMenuItem(
        value: '王二', child: new Text('王二'));
    DropdownMenuItem item4 = new DropdownMenuItem(
        value: '麻子', child: new Text('麻子'));
    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);
    return items;
  }
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);


  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  new AppBar(
        title: new Text('Component Demo'),
      ),
      body: new SingleChildScrollView(
        child: new ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: 300.0
            ),
            child: new Column(
                children: <Widget>[
                    new Radio(
                    key: Key('radio'),
                  value:'3',
                  groupValue: '3',
                  onChanged: (v) {
                    print('v > ${v}');
                  }
              ),
              new Slider(
                  value: 1.0,
                  onChanged: (v) {

                  }
              ),
              new SwitchListTile(
                title: const Text('Lights'),
                value: true,
                onChanged: (bool value) { },
                secondary: const Icon(Icons.lightbulb_outline),
              ),
              new Switch(
                value: true,
                onChanged: (v) {
                },
              ),
              new RaisedButton(
                onPressed: () {
                  selectDate(context);
                },
                child: Text('123'),
              ),
              new DropdownButtonHideUnderline(
                child: new DropdownButton(
                  hint: new Text('下拉菜单选择一个人名'),
                  //设置这个value之后,选中对应位置的item，
                  //再次呼出下拉菜单，会自动定位item位置在当前按钮显示的位置处
                  value: selectItemValue,
                  items: generateItemList(),
                  onChanged: (v){

                  },
                ),
              ),
              new RaisedButton(onPressed: () {
                getImage();
              }, child: Text("photo"),),
              new TextField(
                maxLength: 2,
              )

              ],
            ),
        )
      )
    ) ;
  }


}

