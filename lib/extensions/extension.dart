import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void exShowErrorMessage(
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
