import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() =>
    runApp(new MyApp(
      items: new List<String>.generate(1000, (i) => "Item $i"),
    ));

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = "Build Listview";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return new ListTile(
                leading: new Icon(Icons.title),
                title: new Text('${items[index]}'),
              );
            }),
      ),
    );
  }
}
