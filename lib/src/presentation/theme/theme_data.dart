import 'package:flutter/material.dart';

//general
const primaryBrandColor = Color.fromARGB(255, 91, 1, 1);
const secondaryBrandColor = Color.fromARGB(160, 91, 1, 1);
const highlightColor = Color(0xff18396c);
const alternativeHighlightColor = Color(0xff8eadca);
//per texts
const titlesAndParagraphsColor = Color(0xff5d5d5d);
const subtitlesColor = Color(0xffababab);
const linesColor = Color(0xffdfe1e1);
//per background
const backgroundColor = Color(0xfff8f4f3);
const backgroundAccentColor = Color(0xffffffff);
const backgroundCategoriesColor = Color(0xffcccfce);
const backgroundSecundaryColor = Color(0xfff6ddb4);

final ThemeData light = ThemeData.light();

const titleTextStyle = TextStyle(
    fontFamily: 'Enriqueta',
    color: titlesAndParagraphsColor,
    fontWeight: FontWeight.bold);

const bodyTextStyle = TextStyle(fontFamily: 'Vegur', color: subtitlesColor);

final TextTheme textTheme = light.textTheme.copyWith(
    headline4: titleTextStyle.copyWith(fontSize: 24),
    headline5: titleTextStyle.copyWith(fontSize: 22),
    headline6: titleTextStyle.copyWith(fontSize: 20),
    subtitle1: titleTextStyle.copyWith(fontSize: 17),
    subtitle2: titleTextStyle.copyWith(fontSize: 16),
    bodyText1: bodyTextStyle.copyWith(fontSize: 18),
    bodyText2: bodyTextStyle.copyWith(fontSize: 15),
    button: bodyTextStyle);

final TextTheme primaryTextTheme = textTheme.copyWith(
    headline4: titleTextStyle.copyWith(color: Colors.white),
    headline5: titleTextStyle.copyWith(color: Colors.white),
    headline6: titleTextStyle.copyWith(color: Colors.white),
    subtitle1: titleTextStyle.copyWith(color: Colors.white),
    subtitle2: titleTextStyle.copyWith(color: Colors.white),
    bodyText1: bodyTextStyle.copyWith(color: Colors.white),
    bodyText2: bodyTextStyle.copyWith(color: Colors.white),
    button: bodyTextStyle.copyWith(color: Colors.white));

final ThemeData gestionuhLightTheme = light.copyWith(
  dividerTheme: light.dividerTheme.copyWith(
    color: Colors.black,
    space: 5,
    thickness: 0,
  ),
  primaryColor: primaryBrandColor,
  accentColor: secondaryBrandColor,
  highlightColor: highlightColor,
  scaffoldBackgroundColor: backgroundColor,
  canvasColor: backgroundColor,
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: primaryBrandColor,
    selectionColor: primaryBrandColor,
    selectionHandleColor: primaryBrandColor,
  ),
  backgroundColor: backgroundColor,
  buttonTheme: light.buttonTheme.copyWith(
    buttonColor: primaryBrandColor,
    textTheme: ButtonTextTheme.primary,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    ),
  ),
  textTheme: textTheme,
  primaryTextTheme: primaryTextTheme,
  accentTextTheme: primaryTextTheme,
  iconTheme: light.iconTheme.copyWith(
    color: primaryBrandColor,
  ),
  inputDecorationTheme: light.inputDecorationTheme.copyWith(
    filled: true,
    fillColor: light.cardColor,
    focusColor: secondaryBrandColor,
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: secondaryBrandColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: light.disabledColor,
      ),
    ),
  ),
  appBarTheme: light.appBarTheme.copyWith(
    color: primaryBrandColor,
    shadowColor: Colors.transparent,
    brightness: Brightness.light,
    iconTheme: light.iconTheme.copyWith(
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: light.floatingActionButtonTheme.copyWith(
    backgroundColor: secondaryBrandColor,
  ),
);
