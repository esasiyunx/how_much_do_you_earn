// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'extensions/extension.dart';

void main() => runApp(const MaterialApp(home: MyHomePage()));

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
          title: const Text("appBar Title"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.warning),
              tooltip: "Get an alarm.",
              onPressed: () {
                // showDialog(
                //     context: context,
                //     builder: (BuildContext context) {
                //       return AlertDialog(
                //         title: const Text("alert"),
                //         content: const Text("test"),
                //         actions: <Widget>[
                //           TextButton(
                //             onPressed: () => Navigator.pop(context, 'OK'),
                //             child: const Text('OK'),
                //           ),
                //           TextButton(
                //             onPressed: () => Navigator.pop(context, 'Cancel'),
                //             child: const Text('Cancel'),
                //           ),
                //         ],
                //       );
                //     });
                exShowErrorMessage(text: "kardeş hata verdi");
              },
            )
          ],
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
            Text("welcome $studentName")
          ],
        ),
      ),
      theme: ThemeData.light(),
    );
  }
}
