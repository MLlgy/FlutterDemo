import 'package:flutter/material.dart';

abstract class SnackBarHelper {
  BuildContext scaffoldBuildContext;

  void bindScaffoldContext(BuildContext contex) {
    this.scaffoldBuildContext = contex;
  }

  void showSnackBar(String text, {int second = 3}) {
    var snackbar = new SnackBar(
      content: new Text(text),
      duration: new Duration(seconds: second),
    );
    Scaffold.of(scaffoldBuildContext).showSnackBar(snackbar);
  }
}
