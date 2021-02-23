import 'package:flutter/material.dart';

class GestionUHBottomSheet extends StatelessWidget {
  const GestionUHBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 2.2,
      // '',
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 11),
          children: [
            TextSpan(text: '\u00a9 2021'),
            TextSpan(
                text: ' GestiónUH version 1.0',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 11,
                      color: Theme.of(context).primaryColor,
                    ))
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
