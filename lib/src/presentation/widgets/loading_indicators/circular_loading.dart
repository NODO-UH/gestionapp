import 'package:flutter/material.dart';

class GestionUhLoadingIndicator extends StatelessWidget {
  final Color? color;
  final double strokeWidth;

  const GestionUhLoadingIndicator({
    Key? key,
    this.color,
    this.strokeWidth = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: strokeWidth,
      valueColor:
          AlwaysStoppedAnimation(color ?? Theme.of(context).primaryColor),
    );
  }
}
