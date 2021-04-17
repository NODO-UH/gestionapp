import 'package:flutter/material.dart';
import 'package:gestionuh/src/utils/constants.dart';

class GestionUHBottomSheet extends StatelessWidget {
  const GestionUHBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(bottom: 3),
      child: Center(
        heightFactor: 2.2,
        child: RichText(
          text: TextSpan(
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 11),
            children: [
              const TextSpan(text: '\u00a9 2021'),
              TextSpan(
                  text: Constants.copyRight,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 11,
                        color: Theme.of(context).primaryColor,
                      ))
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
