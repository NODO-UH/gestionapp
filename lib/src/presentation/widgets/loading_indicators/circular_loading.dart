import 'package:flutter/material.dart';

class GestionUhLoadingIndicator extends StatelessWidget {
  const GestionUhLoadingIndicator({Key key, this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor:
          AlwaysStoppedAnimation(color ?? Theme.of(context).primaryColor),
    );
  }
}
