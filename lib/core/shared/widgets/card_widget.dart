import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget? child;
  final ShapeBorder? shape;
  final double? elevation;
  final Clip? clipBehavior;

  const CardWidget({
    Key? key,
    this.child,
    this.elevation,
    this.shape,
    this.clipBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 0,
      shape: shape,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}
