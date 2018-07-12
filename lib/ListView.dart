import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = "Basic List";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.share),
              title: new Text(title),
              trailing: new Icon(Icons.share),
            ),
            new Divider(color: Colors.cyan,),
            new ListTile(
              leading: new Icon(Icons.star),
              title:new Text(title),
            )

          ],
        ),
      ),
    );
  }

}