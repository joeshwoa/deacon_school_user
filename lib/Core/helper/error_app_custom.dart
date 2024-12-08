import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/unit.dart';

showErrorToast({String ? msg,required BuildContext context}) {
  return Fluttertoast.showToast(
    msg: msg ?? '',
    toastLength: Toast.LENGTH_LONG,
    backgroundColor: ColorData.dangerColor,
    gravity: ToastGravity.TOP,
    fontSize: Unit(context).getWidthSize * 0.045,
    textColor: ColorData.whiteColor,
  );
}