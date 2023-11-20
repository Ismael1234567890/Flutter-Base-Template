import 'package:flutter/material.dart';

class MyGridView<T> extends StatelessWidget {
  const MyGridView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.crossAxisCount = 2,
    this.crossAxisSpacing = 10.0,
    this.mainAxisSpacing = 10.0,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
  });
  final List<T> items;
  final Widget Function(BuildContext, T) itemBuilder;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final EdgeInsets? padding;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => itemBuilder(context, items[index]),
      padding: padding,
      physics: physics,
      shrinkWrap: shrinkWrap,
    );
  }
}
