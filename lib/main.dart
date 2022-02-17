// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  //appbarın üstündeki saatin olduğu kısmı transparan yapmayı sağlıyor.
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const GetMaterialApp(home: MyHomePage()));
}

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
