import '/constants/app_export.dart';
import '/shared_components/customs/progress_bar/pg_controller.dart';

// for use
// final progressController = Get.find<ProgressController>();
// progressController.updateProgress(0.5); // Updates progress to 50%.

class CustomLinearProgressIndicator extends StatelessWidget {
  CustomLinearProgressIndicator({
    super.key,
    this.backgroundColor = Colors.grey,
    this.valueColor = AppColors.primaryColor,
  });
  final ProgressController progressController = Get.put(ProgressController());
  final Color backgroundColor;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LinearProgressIndicator(
        value: progressController.progress.value,
        backgroundColor: backgroundColor,
        valueColor: AlwaysStoppedAnimation<Color>(valueColor),
        minHeight: 5.0,
      ),
    );
  }
}
