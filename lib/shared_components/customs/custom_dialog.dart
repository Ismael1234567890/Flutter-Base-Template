import '/constants/app_export.dart';

void showCustomDialog({
  String? title,
  String? content,
  String? activeBtnText,
  String? negativeBtnText,
  Widget? customContent,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) {
  Get.dialog(
    Dialog(
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const Divider(),
            ],
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customContent ?? Text(content ?? ''),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  width: 100,
                  variant: ButtonVariant.Primary,
                  onTap: onConfirm ?? Get.back,
                  text: activeBtnText ?? 'Oui',
                ),
                CustomButton(
                  width: 100,
                  variant: ButtonVariant.Outline,
                  onTap: onCancel ?? Get.back,
                  text: negativeBtnText ?? 'Non',
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    ),
  );
}
