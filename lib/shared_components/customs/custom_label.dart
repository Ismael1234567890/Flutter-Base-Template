import '/constants/app_export.dart';

class CustomLabelApp extends StatelessWidget {
  const CustomLabelApp(
      {super.key,
      required this.label,
      this.fontSize,
      this.prefix,
      this.suffix,
      this.textColor,
      this.fontWeight,
      this.margin,
      this.message,
      this.textStyle,
      this.isCenter = false,
      this.islabelIcon = false,
      this.isRequired = false});
  final String label;
  final double? fontSize;
  final Color? textColor;
  final Widget? prefix;
  final Widget? suffix;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? margin;
  final bool islabelIcon;
  final bool isRequired;
  final String? message;
  final bool isCenter;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment:
            isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: prefix != null ? 8 : 0),
            child: prefix ?? Container(),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: label,
                  style: textStyle,
                ),
                if (isRequired)
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                        fontSize: fontSize,
                        color: AppColors.redColor,
                        fontWeight: fontWeight),
                  ),
              ],
            ),
            textAlign: isCenter ? TextAlign.center : TextAlign.left,
          ),
          Container(
            margin: EdgeInsets.only(left: suffix != null ? 8 : 0),
            child: suffix ??
                (islabelIcon
                    ? Tooltip(
                        message: message ?? "ce ci est un test !",
                        child: const Icon(Icons.info_outline),
                      )
                    : Container()),
          ),
        ],
      ),
    );
  }
}
