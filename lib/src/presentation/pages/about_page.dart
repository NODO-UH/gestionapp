import 'package:flutter/material.dart';

class AboutInformationPage extends StatelessWidget {
  const AboutInformationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información'),
      ),
      // bottomSheet: GestionUHBottomSheet(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Thanks for
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontSize: 17,
                            wordSpacing: 1.2,
                          ),
                      children: [
                        TextSpan(
                            text:
                                'lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem\n ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
                      ])),
              SizedBox(
                height: 100,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 13, letterSpacing: 1.2),
                      children: [
                        TextSpan(text: 'lorem ipsum'),
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
