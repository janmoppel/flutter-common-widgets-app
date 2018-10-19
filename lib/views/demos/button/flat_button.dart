import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  static String routerName = '/button/flat_button';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:  new AppBar(
          title: new Text('flatButton'),
        ),
        body: new SingleChildScrollView(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(
                  minHeight: 600.0
              ),
              child: new RaisedButton(
                onPressed: () {

                },
                child: Text('123'),
              ),
            )
        )
    ) ;
  }
}

