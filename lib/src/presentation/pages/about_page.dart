import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/constants.dart';

class AboutInformationPage extends StatelessWidget {
  const AboutInformationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de GestiónUH'),
      ),
      bottomSheet: Center(
        heightFactor: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'TODOS LOS DERECHOS RESERVADOS',
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 11),
            ),
            Text(
              '\u00a9 2021' + Constants.copyRight,
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Image.asset(
                    "assets/images/splash.png",
                  ),
                ),
              ),
              Text('Aplicación desarrollada para...',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 15, color: Colors.black38)),
              SizedBox(
                height: 80,
              ),
              Text(
                'Desarrollado por',
                style: Theme.of(context).textTheme.headline5.copyWith(),
              ),
              Column(
                children: Developers.teams.keys
                    .map((key) => ExpansionTile(
                          title: Text(key),
                          children: Developers.teams[key]
                              .map((e) => ListTile(
                                    title: Text(
                                      e.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(fontSize: 14),
                                    ),
                                    subtitle: Text(
                                      e.role,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(fontSize: 12),
                                    ),
                                    onTap: e.link == null
                                        ? null
                                        : () async {
                                            if (await canLaunch(e.link))
                                              await launch(e.link);
                                            else
                                              _showCenterFlash(
                                                context,
                                                error:
                                                    'No puede acceder a ${e.link}',
                                              );
                                          },
                                    trailing: Icon(e.link == null
                                        ? Icons.link_off_outlined
                                        : Icons.info),
                                  ))
                              .toList(),
                        ))
                    .toList(),
              ),
              SizedBox(height: 50),
              Text(
                'Agradecimientos',
                style: Theme.of(context).textTheme.headline5.copyWith(),
              ),
              SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                child: Text(
                  'lorem damus ipsum nostra damus nostra damus lorem damus ipsum lorem damus ipsum lorem damus ipsum ipsum lorem ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 13),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  void _showCenterFlash(
    BuildContext context, {
    String error,
    FlashPosition position = FlashPosition.top,
    FlashStyle style = FlashStyle.floating,
    Alignment alignment,
  }) {
    showFlash(
      context: context,
      duration: Duration(seconds: 5),
      builder: (_, controller) {
        return Flash(
          controller: controller,
          backgroundColor: Colors.black87,
          borderRadius: BorderRadius.circular(8.0),
          borderColor: Colors.blue,
          position: position,
          style: style,
          alignment: alignment,
          enableDrag: false,
          onTap: () => controller.dismiss(),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: DefaultTextStyle(
              style: TextStyle(color: Colors.white),
              child: Text(
                error,
              ),
            ),
          ),
        );
      },
    );
  }
}

class DeveloperInfo {
  final String name;
  final String role;
  final String link;

  const DeveloperInfo({
    this.name,
    this.role,
    this.link,
  });
}
