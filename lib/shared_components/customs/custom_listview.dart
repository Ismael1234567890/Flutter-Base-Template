import 'package:flutter/material.dart';

class MyListView<T> extends StatelessWidget {
  const MyListView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
  });

  final List<T> items;
  final Widget Function(BuildContext, T) itemBuilder;
  final EdgeInsets? padding;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => itemBuilder(context, items[index]),
      padding: padding,
      physics: physics,
      shrinkWrap: shrinkWrap,
    );
  }
}
