import 'dart:io';

import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutInformationPage extends StatelessWidget {
  AboutInformationPage({Key key}) : super(key: key);

  Map<String, List<DeveloperInfo>> teams = {
    'NODO CENTRAL DE RED - UH': <DeveloperInfo>[],
    'GRS - UH': <DeveloperInfo>[
      DeveloperInfo(
        name: 'Roberto Martí Cedeño',
        role: 'Team Leader',
        link: null,
      ),
    ],
    'MATCOM - UH': <DeveloperInfo>[
      DeveloperInfo(
        name: 'Carlos Bermúdez Porto',
        role: 'Flutter Developer',
        link: 'https://t.me/cbermudez97',
      ),
      DeveloperInfo(
        name: 'Leonel Alejandro García López',
        role: 'Flutter Developer',
        link: 'https://t.me/lagcleaner',
      ),
      DeveloperInfo(
        name: 'Roberto Martí Cedeño',
        role: 'Team Leader',
        link: 'https://t.me/rmarticedeno',
      ),
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de GestiónUH'),
      ),
      // bottomSheet: GestionUHBottomSheet(),
      body: Padding(
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
                    .copyWith(fontSize: 15, color: Colors.black45)),
            SizedBox(
              height: 80,
            ),
            Text(
              'Desarrollado por',
              style: Theme.of(context).textTheme.headline5.copyWith(),
            ),
            Column(
              children: teams.keys
                  .map((key) => ExpansionTile(
                        title: Text(key),
                        children: teams[key]
                            .map((e) => ListTile(
                                  title: Text(
                                    e.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    e.role,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(fontSize: 15),
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
                                      : Icons.link_outlined),
                                ))
                            .toList(),
                      ))
                  .toList(),
            ),
            // Text(
            //   'Agradecimientos para:',
            //   style: Theme.of(context)
            //       .textTheme
            //       .bodyText2
            //       .copyWith(fontSize: 13, letterSpacing: 1.2),
            // )
          ],
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
