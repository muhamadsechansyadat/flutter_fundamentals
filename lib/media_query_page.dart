import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query Page'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainers(),
            )
          : Row(
              children: generateContainers(),
            ),
    );
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.yellow,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    ];
  }
}
