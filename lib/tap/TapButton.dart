import 'package:flutter/material.dart';
import 'SnackBarHelper.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = "Title";

    return new MaterialApp(
      title: title,
      home: new MyHomeApp(title: title),
    );
  }
}

// ignore: mixin_has_no_constructors
class MyHomeApp extends StatelessWidget with SnackBarHelper {
  final String title;

  MyHomeApp({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bindScaffoldContext(context);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new GestureDetector(
        onTap: () {
//          final snackbar = new SnackBar(content: new Text("Tap"));
//          Scaffold.of(context).showSnackBar(snackbar);
          Scaffold.of(context).showSnackBar(
              new SnackBar(content: new Text("remove index")));
        },
        child: new Container(
          margin: const EdgeInsets.all(12.0),
          padding: EdgeInsets.all(12.0),
          decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(8.0),
          ),
          child: new Text("Click button"),
        ),
      ),
    );
  }
}
