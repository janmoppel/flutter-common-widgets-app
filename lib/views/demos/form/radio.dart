import 'package:flutter/material.dart';

class  RadioDemo extends StatefulWidget {
  static String routerName = '/form/radio';
  @override
  _RadioDemo createState() => new _RadioDemo();
}
class _RadioDemo extends State<RadioDemo> {
  int groupValue;
  setGroupValue(v) {
    setState(() {
      groupValue = v;
    });
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar:  new AppBar(
          title: new Text('radio Demo'),
        ),
        body: new Center(
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Text("radio demo"),
                new Radio(
                    key: Key('radio'),
                    value:2,
                    groupValue: groupValue,
                    onChanged: setGroupValue
                ),
                new Radio(
                    key: Key('radio2'),
                    value:3,
                    groupValue: groupValue,
                    onChanged: setGroupValue
                ),
                ListTile(
                  leading: const Icon(Icons.event_seat),
                  title: const Text('The seat for the narrator'),
                  subtitle: Text('subtitle'),
                  trailing: Text('trailing'),
                    enabled: true,
                    onLongPress: () {
                      print("long");
                    }
//                  contentPadding: EdgeInsets.all(0.0)
                ),
                RadioListTile(
                    title: const Text('Lafayette'),
                    value: 4,
                    activeColor: Colors.green,
                    subtitle: const Text("subtitle"),
                    secondary: const Text("secondary"),
                    isThreeLine: false,
                    selected: true,
                    dense: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    groupValue: groupValue,
                    onChanged: setGroupValue
                  ),
                RadioListTile(
                  title: const Text('Thomas Jefferson'),
                  value: 5,
                  groupValue: groupValue,
                  onChanged: setGroupValue
                ),
              ],
            )
          ),
        )
    );
  }
}

