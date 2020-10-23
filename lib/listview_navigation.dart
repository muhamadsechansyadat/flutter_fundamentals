import 'package:flutter/material.dart';
import 'package:fundamentals_flutter/animated_container_page.dart';
import 'package:fundamentals_flutter/anonymous_method_page.dart';
import 'package:fundamentals_flutter/appbar_example_page.dart';
import 'package:fundamentals_flutter/card_example_page.dart';
import 'package:fundamentals_flutter/container_page.dart';
import 'package:fundamentals_flutter/dragable_page.dart';
import 'package:fundamentals_flutter/flexible_layout_page.dart';
import 'package:fundamentals_flutter/hello_world.dart';
import 'package:fundamentals_flutter/image_widget_page.dart';
import 'package:fundamentals_flutter/inkwell_page.dart';
import 'package:fundamentals_flutter/listview_page.dart';
import 'package:fundamentals_flutter/media_query_page.dart';
import 'package:fundamentals_flutter/row_column.dart';
import 'package:fundamentals_flutter/spacer_widget_page.dart';
import 'package:fundamentals_flutter/stack_align_page.dart';
import 'package:fundamentals_flutter/stateful_page.dart';
import 'package:fundamentals_flutter/text_style_page.dart';
import 'package:fundamentals_flutter/textfield_page.dart';

class ListViewNavigation extends StatefulWidget {
  @override
  _ListViewNavigationState createState() => _ListViewNavigationState();
}

class _ListViewNavigationState extends State<ListViewNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Navigation'),
      ),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final titles = [
    'Hello World',
    'Row Column',
    'Container',
    'Statefull Widget',
    'Anonymous Method',
    'List View',
    'Text Style',
    'Animated Container',
    'Flexibel Layout',
    'Stack Align',
    'Image Widget',
    'Spacer Widget',
    'Dragable',
    'AppBar Example',
    'Card Example',
    'Text Field Example',
    'Media Query Page',
    'InkWell Page'
  ];

  final nav = [
    HelloWorld(),
    RowColumn(),
    ContainerPage(),
    StatefulPage(),
    AnonymousPage(),
    ListviewPage(),
    TextstylePage(),
    AnimatedContainerPage(),
    FlexibleLayoutPage(),
    StackAlignPage(),
    ImageWidgetPage(),
    SpacerWidgetPage(),
    DragablePage(),
    AppBarExamplePage(),
    CardPage(),
    TextfieldPage(),
    MediaQueryPage(),
    InkWellPage()
  ];
  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text(titles[index]),
          trailing: RaisedButton(
            color: Colors.lightBlue,
            child: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return (nav[index]);
                  },
                ),
              );
            },
          ),
        ),
      );
    },
  );
}
