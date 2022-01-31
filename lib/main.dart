import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => studentDialogBoxState();
}

class studentDialogBoxState extends State<MyHomePage> {
  var studentName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("student app"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (String nameToChange) {
              setState(() {
                studentName = nameToChange;
              });
            },
          ),
          Text("hoşgeldin" + studentName)
        ],
      ),
    );
  }
}
