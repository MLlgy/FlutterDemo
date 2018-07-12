import 'package:flutter/material.dart';

void main() => runApp(new GridViewApp());

class GridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = "GridView";
    return new MaterialApp(
      title: title,
      home: new GridViewWidget(),
    );
  }
//  @override
//  Widget build(BuildContext context) {
//
//
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(
//            title,
//        ),
//      ),
//    );
//  }
}

class GridViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GridViewWidgetStatus();
  }
}

class GridViewWidgetStatus extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GridView"),
      ),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }
}

Widget buildGrid() {
//  return new GridView.extent(
//    maxCrossAxisExtent: 150.0,
//    padding: const EdgeInsets.all(4.0),
//    mainAxisSpacing: 4.0,
//    crossAxisSpacing: 4.0,
//    children: _buildGridItem(30),
//
//  );
  return GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 5.0,
    crossAxisSpacing: 15.0,
    children: _buildGridItem(30),
  );
}

List<Container> _buildGridItem(int count) {
  return new List<Container>.generate(
      count,
      (int index) => new Container(
//            child: new Image.asset('images/lake.jpg'),
            child: new Image.network(
              'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
            ),
          ));
}
