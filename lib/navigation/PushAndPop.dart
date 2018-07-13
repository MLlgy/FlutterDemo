import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: "Navigator basic",
      home: new FirstScreen(),
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("First Screen"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("Launch New Screen"),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new SecondScreen()));
            }),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("Go Back"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
