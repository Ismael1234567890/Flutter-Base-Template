// ignore_for_file: constant_identifier_names

import '/constants/app_export.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.isTwo,
    this.label,
    this.labelstyle,
    this.islabelForTwO = false,
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.width,
    this.margin,
    this.marginLabel,
    this.margin2,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.isObscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.onChange1,
    this.validator,
    this.readOnly,
    this.isPhone = false,
    this.isTextFieldDropDown1 = false,
    this.itemList1,
    this.value1,
    this.message1,
    // TextFieldTWO
    this.label2,
    this.controller2,
    this.focusNode2,
    this.autofocus2 = false,
    this.isObscureText2 = false,
    this.islabelIcon = false,
    this.textInputAction2 = TextInputAction.next,
    this.textInputType2 = TextInputType.text,
    this.maxLines2,
    this.hintText2,
    this.prefix2,
    this.prefixConstraints2,
    this.suffix2,
    this.suffixConstraints2,
    this.onChange2,
    this.validator2,
    this.isTextFieldDropDown2 = false,
    this.isPhone2 = false,
    this.itemList2,
    this.value2,
    this.message2,
  });

  // if Two TextField
  final bool? isTwo;
  // variable textField Two
  final TextFormFieldShape? shape;
  final TextFormFieldPadding? padding;
  final TextFormFieldVariant? variant;
  final TextFormFieldFontStyle? fontStyle;
  final Alignment? alignment;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? marginLabel;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final bool? isObscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final FormFieldValidator<String>? validator;
  final String? label;
  final TextStyle? labelstyle;
  final bool? readOnly;
  final bool? islabelIcon;
  final bool? isPhone;
  final bool islabelForTwO;
  final bool isTextFieldDropDown1;
  final List<DropdownMenuItem<dynamic>>? itemList1;
  final dynamic value1;
  final String? message1;
  final TextStyle? hintStyle;
  final Function(dynamic)? onChange1;
// variable textField Two
  final TextEditingController? controller2;
  final FocusNode? focusNode2;
  final bool? autofocus2;
  final bool? isObscureText2;
  final bool? isPhone2;
  final TextInputAction? textInputAction2;
  final TextInputType? textInputType2;
  final int? maxLines2;
  final String? hintText2;
  final Widget? prefix2;
  final BoxConstraints? prefixConstraints2;
  final Widget? suffix2;
  final BoxConstraints? suffixConstraints2;
  final FormFieldValidator<String>? validator2;
  final String? label2;
  final EdgeInsetsGeometry? margin2;
  final bool isTextFieldDropDown2;
  final List<DropdownMenuItem<dynamic>>? itemList2;
  final dynamic value2;
  final String? message2;
  final Function(dynamic)? onChange2;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return isTwo != null && isTwo!
        ? Column(
            children: [
              if (islabelForTwO)
                SizedBox(
                  height: 28,
                  child: Row(
                    children: [
                      Padding(
                        padding: marginLabel ?? const EdgeInsets.only(left: 6),
                        child: Text(
                          label ?? "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: labelstyle ??
                              TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1),
                        ),
                      ),
                      if (islabelIcon!)
                        Tooltip(
                          message: message1 ?? "ce ci est un test !",
                          preferBelow: true,
                          child: const Padding(
                            padding:
                                EdgeInsets.only(left: 4, top: 5, bottom: 4),
                            child: Icon(Icons.info_outline),
                          ),
                        ),
                    ],
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _buildTextFormFieldWidget1()),
                  Expanded(child: _buildTextFormFieldWidget2())
                ],
              ),
            ],
          )
        : _buildTextFormFieldWidget1();
  }

  _buildTextFormFieldWidget1() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (label != "" && label != null && !islabelForTwO)
            SizedBox(
              height: 28,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      label ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: labelstyle ??
                          TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1),
                    ),
                  ),
                  if (islabelIcon!)
                    Tooltip(
                      message: message1 ?? "ce ci est un test !",
                      preferBelow: true,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 4, top: 5, bottom: 4),
                        child: Icon(Icons.info_outline),
                      ),
                    ),
                ],
              ),
            ),
          const SizedBox(
            height: 6,
          ),
          if (!isTextFieldDropDown1)
            TextFormField(
              controller: controller,
              initialValue: value1,
              focusNode: focusNode,
              autofocus: autofocus!,
              style: _setFontStyle(),
              obscureText: isObscureText!,
              textInputAction: textInputAction,
              keyboardType: isPhone! ? TextInputType.phone : textInputType,
              maxLines: maxLines ?? 1,
              decoration: _buildDecoration(),
              onChanged: onChange1,
              validator: validator,
              readOnly: readOnly ?? false,
              inputFormatters: isPhone!
                  ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
                  : null,
            )
          else
            DropdownButtonFormField<dynamic>(
              value: value1,
              icon: Container(),
              decoration: _buildDecoration(),
              items: itemList1 ??
                  ['Option 1', 'Option 2', 'Option 3']
                      .map(
                        (dynamic value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
              focusNode: focusNode,
              autofocus: autofocus!,
              style: _setFontStyle(),
              validator: validator as String? Function(dynamic)?,
              onChanged: onChange1 ?? (value) {},
            ),
        ],
      ),
    );
  }

  _buildTextFormFieldWidget2() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (label2 != "" && label2 != null && !islabelForTwO)
            SizedBox(
                height: 28,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text(
                        label2 ?? "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: labelstyle ??
                            TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1),
                      ),
                    ),
                    if (islabelIcon!)
                      Tooltip(
                        message: message2 ?? "ce ci est un test !",
                        child: const Padding(
                          padding: EdgeInsets.only(left: 4, top: 5, bottom: 4),
                          child: Icon(Icons.info_outline),
                        ),
                      ),
                  ],
                )),
          if (label2 == "") const SizedBox(height: 28),
          const SizedBox(height: 6),
          if (!isTextFieldDropDown2)
            TextFormField(
              controller: controller2,
              initialValue: value2,
              focusNode: focusNode2,
              autofocus: autofocus2!,
              style: _setFontStyle(),
              obscureText: isObscureText2!,
              textInputAction: textInputAction2,
              keyboardType: isPhone2! ? TextInputType.phone : textInputType2,
              maxLines: maxLines2 ?? 1,
              decoration: _buildDecoration2(),
              validator: validator2,
              onChanged: onChange2,
              inputFormatters: isPhone2!
                  ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
                  : null,
              readOnly: readOnly ?? false,
            )
          else
            DropdownButtonFormField<dynamic>(
              value: value2,
              icon: Container(),
              decoration: _buildDecoration2(),
              items: itemList2 ??
                  ['Option 1', 'Option 2', 'Option 3']
                      .map(
                        (dynamic value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
              focusNode: focusNode2,
              autofocus: autofocus2!,
              style: _setFontStyle(),
              validator: validator2 as String? Function(dynamic)?,
              onChanged: onChange2 ?? (value) {},
            ),
        ],
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintStyle ?? _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _buildDecoration2() {
    return InputDecoration(
      hintText: hintText2 ?? "",
      hintStyle: hintStyle ?? _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix2,
      prefixIconConstraints: prefixConstraints2,
      suffixIcon: suffix2,
      suffixIconConstraints: suffixConstraints2,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (variant) {
      case TextFormFieldVariant.BackgroundPrimary:
        return TextStyle(
          color: AppColors.whiteColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldVariant.BackgroundPrimaryLight:
        return TextStyle(
          color: AppColors.whiteColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
            color: AppColors.greyColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: 1);
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder4:
        return BorderRadius.circular(4.0);
      case TextFormFieldShape.RoundedBorder12:
        return BorderRadiusStyle.roundedBorder12;
      default:
        return BorderRadiusStyle.roundedBorder6;
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.BackgroundPrimary:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.BackgroundPrimaryLight:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineBlack:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: AppColors.blackColor,
            width: 1,
          ),
        );
      case TextFormFieldVariant.BottomUnderline:
        return UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyColor),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: AppColors.greyColor.withOpacity(0.3),
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.BackgroundPrimary:
        return AppColors.primaryColor;
      case TextFormFieldVariant.BackgroundPrimaryLight:
        return AppColors.primaryColor.withOpacity(0.6);
      case TextFormFieldVariant.Outline:
        return AppColors.whiteColor;
      case TextFormFieldVariant.BottomUnderline:
        return Colors.transparent;

      default:
        return AppColors.whiteColor;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.BackgroundPrimary:
        return true;
      case TextFormFieldVariant.BackgroundPrimaryLight:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT11:
        return const EdgeInsets.only(left: 12, top: 13, bottom: 13);
      case TextFormFieldPadding.PaddingAll8:
        return const EdgeInsets.all(10);
      case TextFormFieldPadding.PaddingT15:
        return const EdgeInsets.only(left: 15, top: 18, bottom: 18);
      case TextFormFieldPadding.PaddingT0:
        return const EdgeInsets.all(0);
      case TextFormFieldPadding.PaddingDropDown:
        return const EdgeInsets.only(left: 12, right: 12);
      default:
        return const EdgeInsets.only(left: 16, top: 14, bottom: 16, right: 16);
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder12,
  RoundedBorder4,
}

enum TextFormFieldPadding {
  PaddingT11,
  PaddingAll11,
  PaddingAll8,
  PaddingT15,
  PaddingT0,
  PaddingDropDown,
}

enum TextFormFieldVariant {
  None,
  Outline,
  BackgroundPrimary,
  BackgroundPrimaryLight,
  OutlineBlack,
  BottomUnderline,
}

enum TextFormFieldFontStyle {
  PoppinsRegular15,
  Poppins,
  Inter,
}
