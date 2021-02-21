import 'package:flutter/material.dart';

import 'src/presentation/pages.dart';
import 'src/presentation/theme.dart';
import 'src/utils/constants.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: gestionuhLightTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
