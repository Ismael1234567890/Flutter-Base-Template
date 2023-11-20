import 'dart:ui';
import '/constants/app_export.dart';

class PopupMenu<T> extends StatelessWidget {
  const PopupMenu(
      {Key? key,
      required this.items,
      this.icon = const Icon(Icons.more_vert),
      this.iconColor = Colors.black})
      : super(key: key);

  final List<Widget> items;
  final Widget? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<T>(
        icon: icon,
        shadowColor: AppColors.greyColor,
        color: AppColors.whiteColor.withOpacity(0.8),
        padding: const EdgeInsets.only(left: 8.0, right: 0.0),
        shape: OutlineInputBorder(
          borderRadius: BorderRadiusStyle.roundedBorder12,
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        position: PopupMenuPosition.under,
        itemBuilder: (BuildContext context) {
          return items
              .map(
                (Widget item) => PopupMenuItem<T>(
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 190,
                              margin: const EdgeInsets.only(top: 16),
                              child: item),
                          Container(
                            height: 1.5,
                            width: 190,
                            color: AppColors.greyColor,
                            margin: const EdgeInsets.only(top: 16),
                          ),
                        ],
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList();
        },
      ),
    );
  }
}
