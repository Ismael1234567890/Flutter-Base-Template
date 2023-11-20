// ignore_for_file: must_be_immutable
import '/constants/app_export.dart';

class CustomBarSlider extends StatefulWidget {
  CustomBarSlider({
    Key? key,
    this.division = 0,
    this.maxValue,
    this.minValue,
    this.symboleValue,
    this.styleText,
    this.isFraction = false,
    this.initialValue = 0,
  }) : super(key: key);
  final String? symboleValue;
  final double? minValue;
  final double? maxValue;
  final int? division;
  final bool? isFraction;
  double initialValue;
  final TextStyle? styleText;

  @override
  State<CustomBarSlider> createState() => _CustomBarSliderState();
}

class _CustomBarSliderState extends State<CustomBarSlider> {
  static const _sliderPadding = 0;
  static const _indicatorMargin = -38;
  static const _alignCenterFraction = 0.5;
  static const _alignMax = 1.0;

  // bool _isSliding = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(builder: (context, constraints) {
          final leftPaddingOffset = _sliderPadding / constraints.maxWidth;
          final maxWidth =
              (_alignMax - _sliderPadding * 2 / constraints.maxWidth);
          final offsetX = widget.initialValue / (widget.maxValue ?? 100);
          final offsetY = _indicatorMargin / constraints.maxHeight;

          return Stack(
            children: [
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 4.0,
                  showValueIndicator: ShowValueIndicator.never,
                  tickMarkShape: SliderTickMarkShape.noTickMark,
                  overlayShape: SliderComponentShape.noThumb,
                  trackShape: const RoundedRectSliderTrackShape(),
                  activeTrackColor: AppColors.primaryColor,
                  inactiveTrackColor: AppColors.greyColor.withOpacity(0.6),
                  thumbColor: AppColors.secondaryColor,
                  thumbShape: const RoundSliderThumbShape(),
                  valueIndicatorColor: Colors.transparent,
                  valueIndicatorTextStyle: widget.styleText,
                ),
                child: Slider(
                  label: "${widget.initialValue.toStringAsFixed(0)}%",
                  divisions: widget.division,
                  value: widget.initialValue,
                  min: widget.minValue ?? 0,
                  max: widget.maxValue ?? 100,
                  onChanged: (value) =>
                      setState(() => widget.initialValue = value),
                  // onChangeStart: (_) => setState(() => _isSliding = true),
                  // onChangeEnd: (_) => setState(() => _isSliding = false),
                ),
              ),
              AnimatedOpacity(
                opacity: 1, //_isSliding ? 1 : 0,
                duration: const Duration(milliseconds: 200),
                child: AnimatedAlign(
                  duration: const Duration(milliseconds: 100),
                  alignment: FractionalOffset(
                    leftPaddingOffset + offsetX * maxWidth,
                    _alignCenterFraction + offsetY,
                  ),
                  child: Text(
                    widget.isFraction!
                        ? Utils.getFractionValue(widget.initialValue)
                        : "${widget.initialValue.toStringAsFixed(0)}${widget.symboleValue}",
                    style: widget.styleText,
                  ),
                ),
              ),
            ],
          );
        }),
      ],
    );
  }
}
