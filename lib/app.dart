import 'package:flutter/material.dart';

import 'src/presentation/pages.dart';
import 'src/presentation/theme.dart';
import 'src/utils/constants.dart';

class GestionUhApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: gestionuhLightTheme,
      // home: LoginPage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          default:
            return MaterialPageRoute(builder: (_) => LoginPage());
        }
      },
    );
  }
}
