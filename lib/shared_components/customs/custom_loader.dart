import 'package:flutter_spinkit/flutter_spinkit.dart';
import '/constants/app_export.dart';

// see for more style of loading
// https://pub.dev/packages/flutter_spinkit
void showCustomLoading({
  bool? barrierDismissible,
  int? durationMillisecond,

  /// variants: doubleBounce, wave, chasingDots, threeBounce, circle, pouringHourGlassRefined, ring, threeInOut,spinningLines
  TypeLoading? type,
}) {
  Get.dialog(
    Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.circleBorder20,
            color: AppColors.whiteColor),
        child: loading(type, durationMillisecond),
      ),
    ),
    barrierDismissible: false,
  );
}

void hideLoading() {
  if (Get.isDialogOpen ?? false) {
    Get.back();
  }
}

Widget loading(TypeLoading? type, int? duration) {
  switch (type) {
    case TypeLoading.doubleBounce:
      return SpinKitDoubleBounce(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.wave:
      return SpinKitWave(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.chasingDots:
      return SpinKitChasingDots(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.threeBounce:
      return SpinKitThreeBounce(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.circle:
      return SpinKitCircle(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.pouringHourGlassRefined:
      return SpinKitPouringHourGlassRefined(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.ring:
      return SpinKitRing(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.threeInOut:
      return const SpinKitThreeInOut(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: 200),
        size: 50.0,
      );
    case TypeLoading.spinningLines:
      return SpinKitSpinningLines(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.wanderingCubes:
      return SpinKitWanderingCubes(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
    case TypeLoading.ripple:
      return SpinKitRipple(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );

    default:
      return SpinKitRing(
        color: AppColors.primaryColor,
        duration: Duration(milliseconds: duration ?? 2000),
        size: 50.0,
      );
  }
}

enum TypeLoading {
  doubleBounce,
  wave,
  chasingDots,
  threeBounce,
  circle,
  pouringHourGlassRefined,
  ring,
  threeInOut,
  spinningLines,
  wanderingCubes,
  ripple
}
