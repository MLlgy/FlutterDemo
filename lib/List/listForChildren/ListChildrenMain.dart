import 'package:flutter/material.dart';
import 'ListItem.dart';
import 'HeadingItem.dart';
import 'MessageItem.dart';

void main() => runApp(new MyApp(
    items: new List<ListItem>.generate(
        1000,
        (index) => index % 6 == 0
            ? new HeadingItem(" Heading $index")
            : new MessageItem("sender $index", "body $index"))));

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = "Title";

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(title: new Text(title)),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            if (item is HeadingItem) {
              return new Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              );
            } else if (item is MessageItem) {
              return new ListTile(
                title: new Text(item.sender),
                subtitle: new Text(item.body),
              );
            }
          },
        ),
      ),
    );
  }
}
