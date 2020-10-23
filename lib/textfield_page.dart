import 'package:flutter/material.dart';

class TextfieldPage extends StatefulWidget {
  @override
  _TextfieldPageState createState() => _TextfieldPageState();
}

class _TextfieldPageState extends State<TextfieldPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan TextField"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                suffix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.red,
                ),
                icon: Icon(Icons.adb),
                prefixIcon: Icon(Icons.person),
                prefixText: "Name : ",
                prefixStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w700,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              // obscureText: true,
              controller: controller,
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          Text(controller.text),
        ],
      ),
    );
  }
}
