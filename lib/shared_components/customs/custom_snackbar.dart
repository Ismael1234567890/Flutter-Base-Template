import '/constants/app_export.dart';

void showCustomSnackbar({
  String title = 'Message',
  required String message,
  String? actionLabel,
  VoidCallback? onActionPressed,
  Color backgroundColor = const Color.fromARGB(255, 66, 66, 66),
  Color textColor = Colors.white,
  Duration duration = const Duration(seconds: 3),
}) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: backgroundColor,
    colorText: textColor,
    duration: duration,
    mainButton: onActionPressed == null
        ? null
        : TextButton(
            onPressed: onActionPressed,
            child: Text(
              actionLabel ?? 'Action',
              style: const TextStyle(color: AppColors.primaryColor),
            ),
          ),
  );
}
