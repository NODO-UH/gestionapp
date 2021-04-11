import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GestionUhDefaultTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText, hintText;
  final BorderRadius? borderRadius;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextStyle? style, labelStyle, hintStyle;
  final Function? onTap;
  final List<TextInputFormatter>? inputFormatters;

  GestionUhDefaultTextField({
    Key? key,
    this.controller,
    this.style,
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.borderRadius,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
    this.onTap,
    this.keyboardType,
    this.inputFormatters,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return GestionUhDefaultTextFieldState();
  }
}

class GestionUhDefaultTextFieldState extends State<GestionUhDefaultTextField> {
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText =
        widget.keyboardType == TextInputType.visiblePassword ? true : false;
  }

  void _toggleVisible() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: TextFormField(
            validator: widget.validator,
            inputFormatters: widget.inputFormatters ?? [],
            autovalidateMode:
                widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
            autofocus: false,
            style: widget.style ??
                TextStyle(
                  fontSize: 17,
                ),
            onChanged: widget.onChanged,
            onTap: widget.onTap as void Function()?,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            textAlignVertical: TextAlignVertical.center,
            textInputAction: TextInputAction.done,
            textAlign: TextAlign.justify,
            cursorColor: Theme.of(context).accentColor,
            obscureText: _obscureText,
            decoration: InputDecoration(
              fillColor: Theme.of(context).cardColor,
              filled: true,
              contentPadding: EdgeInsets.only(left: 10),
              labelStyle: widget.labelStyle ??
                  Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Theme.of(context).primaryColor),
              hintStyle:
                  widget.hintStyle ?? Theme.of(context).textTheme.bodyText1,
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    widget.borderRadius ?? BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.grey[300]!,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius:
                    widget.borderRadius ?? BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.grey[300]!,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    widget.borderRadius ?? BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius:
                    widget.borderRadius ?? BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.red.withOpacity(.5),
                ),
              ),
              labelText: widget.labelText,
              hintText: widget.hintText,
            ),
          ),
        ),
        if (widget.keyboardType == TextInputType.visiblePassword)
          SizedBox(
            width: 40,
            child: Material(
              color: Theme.of(context).primaryColor,
              clipBehavior: Clip.antiAlias,
              child: IconButton(
                color: Colors.red,
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).cardColor,
                ),
                onPressed: _toggleVisible,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
