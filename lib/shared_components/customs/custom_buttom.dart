// ignore_for_file: constant_identifier_names
import '/constants/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.margin,
    this.onTap,
    this.width,
    this.height,
    this.text,
    this.prefixWidget,
    this.suffixWidget,
    this.textStyle,
    this.iconCenter,
    this.mainAxisAlignment,
    this.isFlexIcon = false,
    super.key,
  });

  ButtonShape? shape;
  EdgeInsets? padding;
  ButtonVariant? variant;
  ButtonFontStyle? fontStyle;
  Alignment? alignment;
  EdgeInsetsGeometry? margin;
  VoidCallback? onTap;
  double? width;
  double? height;
  String? text;
  Widget? prefixWidget;
  Widget? suffixWidget;
  bool isFlexIcon;

  /// vous devez choisir la variante icon center
  Widget? iconCenter;
  MainAxisAlignment? mainAxisAlignment;

  /// si textstyle le style pardefaut n'est pas prise en compet
  TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: Padding(
              padding: margin ?? EdgeInsets.zero,
              child: TextButton(
                onPressed: onTap,
                style: _buildTextButtonStyle(),
                child: _buildButtonWithOrWithoutIcon(),
              ),
            ),
          )
        : Padding(
            padding: margin ?? EdgeInsets.zero,
            child: TextButton(
              onPressed: onTap,
              style: _buildTextButtonStyle(),
              child: _buildButtonWithOrWithoutIcon(),
            ),
          );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        children: [
          if (prefixWidget != null) prefixWidget!,
          if (isFlexIcon)
            Flexible(
              flex: 5,
              child: Text(
                text ?? "",
                textAlign: TextAlign.center,
                style: textStyle ?? _setFontStyle(),
              ),
            ),
          if (isFlexIcon) Flexible(child: suffixWidget ?? const SizedBox()),
          if (!isFlexIcon)
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: textStyle ?? _setFontStyle(),
            ),
          if (!isFlexIcon) suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      switch (variant) {
        case ButtonVariant.IconCenter:
          return iconCenter;
        default:
          return Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: textStyle ?? _setFontStyle(),
          );
      }
    }
  }

  // buildDecoration() {
  //   return BoxDecoration(
  //     border: _setBorder(),
  //     borderRadius: _setBorderRadius(),
  //     gradient: _setGradient(),
  //     boxShadow: _setBoxShadow(),
  //   );
  // }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? 40,
      ),
      padding: padding ?? const EdgeInsets.all(8),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.Primary:
        return AppColors.primaryColor;
      case ButtonVariant.Red:
        return AppColors.redLabelColors;
      case ButtonVariant.Yellow:
        return AppColors.warningColor;
      case ButtonVariant.White:
        return AppColors.whiteColor;
      case ButtonVariant.LightView:
        return AppColors.primaryColor.withOpacity(0.6);
      case ButtonVariant.Desactived:
        return AppColors.lightGreyColor;
      case ButtonVariant.DesactivedGrey:
        return AppColors.greyColor.withOpacity(0.6);
      case ButtonVariant.TextUnique:
        return null;
      case ButtonVariant.Outline:
        return null;
      case ButtonVariant.OutlineDesactived:
        return null;
      case ButtonVariant.IconCenter:
        return null;
      case ButtonVariant.Secondary:
        return AppColors.secondaryColor;
      default:
        return AppColors.primaryColor;
    }
  }

  _setColorText() {
    switch (variant) {
      case ButtonVariant.Outline:
        return AppColors.primaryColor;
      case ButtonVariant.LightView:
        return AppColors.primaryColor;
      case ButtonVariant.OutlineDesactived:
        return AppColors.greyColor;
      case ButtonVariant.DesactivedGrey:
        return AppColors.greyColor;
      case ButtonVariant.TextUnique:
        return AppColors.primaryColor;
      case ButtonVariant.White:
        return AppColors.blackColor;
      default:
        return AppColors.whiteColor;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.Outline:
        return const BorderSide(color: AppColors.primaryColor, width: 2.0);
      case ButtonVariant.OutlineDesactived:
        return BorderSide(color: AppColors.greyColor, width: 1.0);
      case ButtonVariant.IconCenter:
        return BorderSide(color: AppColors.greyColor, width: 0.5);

      case ButtonVariant.TextUnique:
        return null;
      case ButtonVariant.DesactivedGrey:
        return null;
      case ButtonVariant.Primary:
        return null;
      case ButtonVariant.Red:
        return null;
      case ButtonVariant.Yellow:
        return null;
      case ButtonVariant.White:
        return BorderSide(color: AppColors.greyColor, width: 0.5);
      case ButtonVariant.LightView:
        return null;
      case ButtonVariant.Desactived:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder6:
        return BorderRadiusStyle.roundedBorder8;

      case ButtonShape.RoundedBorder12:
        return BorderRadiusStyle.roundedBorder12;

      case ButtonShape.RoundedBorder16:
        return BorderRadiusStyle.roundedBorder16;
      case ButtonShape.RoundedBorder24:
        return BorderRadiusStyle.circleBorder24;
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadiusStyle.roundedBorder12;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.Poppins:
        return TextStyle(
          color: _setColorText(),
          fontSize: 13,
          // fontFamily: AppFont.poppins,
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.Inter:
        return TextStyle(
          color: _setColorText(),
          fontSize: 12,
          // fontFamily: AppFont.poppins,
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.TitilliumWeb:
        return TextStyle(
          color: _setColorText(),
          fontSize: 13.sp,
          // fontFamily: AppFont.titilliumWeb,
          fontWeight: FontWeight.w700,
        );

      default:
        return TextStyle(
          color: _setColorText(),
          fontSize: 17,
          // fontFamily: AppFont.poppins,
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder6,
  RoundedBorder12,
  RoundedBorder16,
  RoundedBorder24,
}

enum ButtonVariant {
  Primary,
  Red,
  Yellow,
  White,
  Desactived,
  Outline,
  OutlineDesactived,
  DesactivedGrey,
  LightView,
  Secondary,
  TextUnique,
  IconCenter
}

enum ButtonFontStyle {
  Poppins,
  Inter,
  TitilliumWeb,
}
