import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'extensions/extension.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

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
          title: Text("appBar Title"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.warning),
              tooltip: "Get an alarm.",
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("alert"),
                        content: Text("test"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                        ],
                      );
                    });
                myShowErrorMessage("kardeş hata");
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
            Text("welcome " + studentName)
          ],
        ),
      ),
      theme: ThemeData.light(),
    );
  }
}
