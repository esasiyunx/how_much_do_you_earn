import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StudentDialogBoxState();
}

class StudentDialogBoxState extends State<MyHomePage> {
  var studentName = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
          Text("hoşgeldin " + studentName)
        ],
      ),
    ));
  }
}
