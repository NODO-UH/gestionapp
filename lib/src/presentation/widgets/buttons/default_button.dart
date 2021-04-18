import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestionuh/src/presentation/theme/theme.dart';

class GestionUhDefaultButton extends StatelessWidget {
  final Widget? child;
  final ShapeBorder? shape;
  final bool isSecundary;
  final VoidCallback? onPressed;
  final String? text;
  final IconData? icon;

  const GestionUhDefaultButton({
    this.child,
    this.shape,
    this.isSecundary = false,
    this.text,
    this.onPressed,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary:
              isSecundary ? Theme.of(context).cardColor : primaryBrandColor,
          animationDuration: const Duration(microseconds: 300),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          shape: shape as OutlinedBorder? ??
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
        ),
        onPressed: onPressed,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (text == null && icon == null) child!,
              if (text != null)
                Text(text!,
                    textScaleFactor: 1.25,
                    style: isSecundary
                        ? Theme.of(context)
                            .primaryTextTheme
                            .button
                            ?.copyWith(color: Theme.of(context).primaryColor)
                        : Theme.of(context).primaryTextTheme.button),
              if (text != null && icon != null)
                const SizedBox(
                  width: 5,
                ),
              if (icon != null)
                if (onPressed == null)
                  Icon(icon, color: Theme.of(context).cardColor)
                else
                  Icon(icon)
            ],
          ),
        ),
      ),
    );
  }
}
