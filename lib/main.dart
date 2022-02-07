// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'extensions/extension.dart';
import 'extensions/routes.dart';
import 'myfirstpage.dart';

void main() => runApp(const GetMaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StudentDialogBoxState();
}

class StudentDialogBoxState extends State<MyHomePage> {
  var studentName = "";

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("appBar Title"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.warning),
              tooltip: "Get an alarm.",
              onPressed: () {
                // exShowDialogMessage(
                //   context: context,
                //   text: "başlık",
                //   content: "içerik",
                // );
                // exShowToastMessage(text: "kardeş hata verdi");
                Get.defaultDialog(
                    textConfirm: "Confirm",
                    textCancel: "Cancel",
                    title: "title",
                    content: const Text("asd"),
                    backgroundColor: Colors.blueGrey,
                    middleText: "zxc");
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
