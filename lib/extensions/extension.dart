import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void exShowToastMessage(
    {required String text,
    Toast? length = Toast.LENGTH_SHORT,
    ToastGravity? gravity = ToastGravity.CENTER,
    int timeInSecForIosWeb = 1,
    Color? backgroundColor = Colors.red,
    Color? textColor = Colors.white,
    double? fontSize = 16.0}) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: length,
      gravity: gravity,
      timeInSecForIosWeb: timeInSecForIosWeb,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontSize);
}

void exShowDialogMessage({
  required BuildContext context,
  required String text,
  required String content,
  String textButtonTextLeft = "OK",
  String textButtonTextRight = "Cancel",
}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(text),
            content: Text(content),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, textButtonTextLeft),
                child: Text(textButtonTextLeft),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, textButtonTextRight),
                child: Text(textButtonTextRight),
              ),
            ]);
      });
}
