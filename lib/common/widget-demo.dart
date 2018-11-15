import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetDemo extends StatelessWidget {
  final Widget child;
  final String docUrl;
  final String title;
  final String desc;
  final String codeUrl;

  WidgetDemo(
      {Key key,
      @required this.title,
      @required this.child,
      @required this.desc,
      @required this.codeUrl,
      @required this.docUrl})
      : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          new IconButton(
            tooltip: 'widget doc',
            onPressed: (){
              _launchURL(docUrl);
            },
            icon: Icon(Icons.library_books),
          ),
          new IconButton(
            tooltip: 'github code',
            onPressed: (){
              _launchURL(codeUrl);
            },
            icon: Icon(Icons.code),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Column(
          children: <Widget>[
            Text(desc, style: TextStyle(fontSize: 15.5, height: 1.2)),
            SizedBox(
              height: 20.0,
            ),
            child,
          ],
        ),
      ),
    );
  }
}
