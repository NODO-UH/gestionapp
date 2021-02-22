import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gestionuh/src/presentation/theme.dart';

class GestionUhDefaultButton extends StatelessWidget {
  final Widget child;
  final ShapeBorder shape;
  final bool isSecundary;
  final VoidCallback onPressed;
  final String text;
  final IconData icon;

  GestionUhDefaultButton({
    this.child,
    this.shape,
    this.isSecundary = false,
    this.text,
    this.onPressed,
    this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: RaisedButton(
        color: isSecundary ? Theme.of(context).cardColor : primaryBrandColor,
        splashColor: Theme.of(context).highlightColor,
        animationDuration: Duration(microseconds: 300),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        onPressed: onPressed,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (this.text == null && this.icon == null) child,
              if (this.text != null)
                Text(this.text,
                    textScaleFactor: 1.25,
                    style: isSecundary
                        ? Theme.of(context).textTheme.bodyText2
                        : Theme.of(context).primaryTextTheme.button),
              if (this.text != null && this.icon != null)
                SizedBox(
                  width: 5,
                ),
              if (this.icon != null)
                if (onPressed == null)
                  Icon(icon, color: Theme.of(context).cardColor)
                else
                  Icon(icon)
            ],
          ),
        ),
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
      ),
    );
  }
}