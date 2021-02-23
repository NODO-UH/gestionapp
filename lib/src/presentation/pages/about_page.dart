import 'package:flutter/material.dart';

class AboutInformationPage extends StatelessWidget {
  const AboutInformationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambiar Contraseña'),
      ),
      // bottomSheet: GestionUHBottomSheet(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Thanks for
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                  TextSpan(text: 'lorem ipsum'),
                ])),
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                  TextSpan(text: 'lorem ipsum'),
                ])),
          ],
        ),
      ),
    );
  }
}
