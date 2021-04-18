import 'package:flutter/material.dart';
import 'package:gestionuh/src/presentation/theme/theme.dart';
import 'package:gestionuh/src/router.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';

class GestionUhApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: gestionuhLightTheme,
      debugShowCheckedModeBanner: Constants.testMode,
      onGenerateRoute: RouterNavigation.onGenerateRoute,
    );
  }
}
