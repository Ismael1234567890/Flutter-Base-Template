import '/constants/app_export.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    Key? key,
    this.width = 24.0,
    this.height = 24.0,
    this.color,
    this.icon,
    this.iconSize,
    this.onChanged,
    this.value,
    this.decoration,
    this.checkColor,
  }) : super(key: key);

  final double width;
  final double height;
  final Color? color;
  final Widget? icon;
  final double? iconSize;
  final Color? checkColor;
  final BoxDecoration? decoration;
  final bool? value;
  final Function(bool?)? onChanged;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
        widget.onChanged?.call(isChecked);
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        width: widget.width,
        height: widget.height,
        decoration: widget.decoration,
        child: isChecked || widget.value == true
            ? widget.icon ??
                Icon(
                  Icons.check,
                  size: widget.iconSize,
                  color: widget.checkColor,
                )
            : null,
      ),
    );
  }
}
