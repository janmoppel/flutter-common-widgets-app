import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetDemo extends StatelessWidget {
  final Widget child;
  final String docUrl;
  final String title;

  WidgetDemo({Key key, @required this.title, @required this.child, @required this.docUrl}) : super(key: key);


  _launchURL() async {
    if (await canLaunch(docUrl)) {
      await launch(docUrl);
    } else {
      throw 'Could not launch $docUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          new FlatButton(
            onPressed: _launchURL,
            child: new Icon(
              Icons.attachment,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: child,
    );
  }
}
