import 'package:flutter/material.dart';

import 'package:hello_world/navigation/passData/Todo.dart';
import 'package:hello_world/navigation/passData/DetailScreen.dart';

void main() => runApp(new MaterialApp(
      title: "Passing Data",
      home: new TodoScreen(
          todos: new List.generate(20,
              (index) => new Todo('toso title $index', 'todo desc $index'))),
    ));

class TodoScreen extends StatelessWidget {
  final List<Todo> todos;

  TodoScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Todos"),
      ),
      body: new ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text(todos[index].title),
              subtitle: new Text(todos[index].desc),

              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new DetailScreen(todo: todos[index])));
              },
            );
          }),
    );
  }
}
