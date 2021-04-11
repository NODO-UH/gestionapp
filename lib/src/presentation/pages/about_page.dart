import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/constants.dart';

class AboutInformationPage extends StatelessWidget {
  const AboutInformationPage({Key? key}) : super(key: key);

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
              '\u00a9 2021' + Constants.copyRight,
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.headline6!.copyWith(fontSize: 12),
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
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  child: Image.asset(
                    "assets/images/logo-uh.png",
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(About.shortDescription,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 15, color: Colors.black38)),
              SizedBox(
                height: 50,
              ),
              Text(
                'Equipo de desarrollo:',
                style: Theme.of(context).textTheme.headline5!.copyWith(),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: Developers.teams.keys
                    .map((key) => ExpansionTile(
                          title: Text(key),
                          children: Developers.teams[key]!
                              .map((e) => ListTile(
                                    title: Text(
                                      e.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(fontSize: 14),
                                    ),
                                    subtitle: Text(
                                      e.role,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 12),
                                    ),
                                    onTap: e.link == null
                                        ? null
                                        : () async {
                                            if (await canLaunch(e.link!))
                                              await launch(e.link!);
                                            else
                                              _showCenterFlash(
                                                context,
                                                error:
                                                    'No puede acceder a ${e.link}',
                                              );
                                          },
                                    trailing: e.link != null
                                        ? Icon(Icons.link_off_outlined)
                                        : null,
                                  ))
                              .toList(),
                        ))
                    .toList(),
              ),
              SizedBox(height: 50),
              Text(
                'Nodo Central de Red - UH',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
              SizedBox(height: 10),
              Text(
                'MATCOM - UH',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
              SizedBox(height: 10),
              Text(
                'GRS - UH',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Copyright 2021',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Container(padding: EdgeInsets.all(2)),
                      Icon(
                        Icons.copyright,
                        color: Theme.of(context).textTheme.subtitle2!.color,
                      ),
                      Container(padding: EdgeInsets.all(2)),
                      Text(
                        'GPL-3.0',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
                onTap: () async {
                  const url =
                      'https://raw.githubusercontent.com/covid19cuba/covid19cuba-app/master/LICENSE';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    _showCenterFlash(
                      context,
                      error: 'No puede acceder a $url',
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showCenterFlash(
    BuildContext context, {
    String? error,
    FlashPosition position = FlashPosition.top,
    FlashStyle style = FlashStyle.floating,
    Alignment? alignment,
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
                error!,
              ),
            ),
          ),
        );
      },
    );
  }
}

class DeveloperInfo {
  final String? name;
  final String? role;
  final String? link;

  const DeveloperInfo({
    this.name,
    this.role,
    this.link,
  });
}
