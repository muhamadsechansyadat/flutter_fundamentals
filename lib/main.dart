import 'package:flutter/material.dart';
import 'package:fundamentals_flutter/listview_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewNavigation(),
    );
  }
}
