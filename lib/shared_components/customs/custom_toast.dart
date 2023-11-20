import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomToast({
  String? title,
  required String message,
  Color? backgroundColor,
  Color? textColor,
  int duration = 2,
}) {
  Get.snackbar(
    title ?? 'Message',
    message,
    snackPosition: SnackPosition.TOP,
    backgroundColor: backgroundColor,
    colorText: textColor,
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    borderRadius: 20,
    duration: Duration(seconds: duration),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.easeOutBack,
  );
}
