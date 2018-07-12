import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  "Lake",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                "Kaa",
                style: new TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Container(
            color: Colors.amber[500],
            padding: const EdgeInsets.only(bottom: 20.0),
            child: new Text(
              "41",
              style: TextStyle(
                  decorationColor: Colors.amber[500],
                  fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );

    return MaterialApp(
      title: "Lake",
      home: Scaffold(
        appBar: AppBar(
          title: Text("lake title"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
                'images/lake.jpg',
                width: 600.0,
                height: 240.0,
                fit: BoxFit.cover),
            titleSection
          ],
        ),
      ),
    );
  }
}
