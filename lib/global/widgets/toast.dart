import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

 showToast({required String msg, required ToastStates state}) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor:chooseToastColor(state: state),
      textColor: Colors.white,
      fontSize: 16.0);
}


enum ToastStates{SUCCESS,ERROR,WARRING}

Color chooseToastColor({ required ToastStates state}) {
  Color? color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARRING:
      color = Colors.amber;
      break;
  }
  return color;
}