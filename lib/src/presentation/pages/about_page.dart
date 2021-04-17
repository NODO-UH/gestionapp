import 'package:flutter/material.dart';
import 'package:gestionuh/src/presentation/widgets/flash_helper.dart';
import 'package:gestionuh/src/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutInformationPage extends StatelessWidget {
  const AboutInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de GestiónUH'),
        centerTitle: true,
      ),
      bottomSheet: Center(
        heightFactor: 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '\u00a9 2021${Constants.copyRight}',
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
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo-uh.png',
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                About.shortDescription,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 15, color: Colors.black38),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Equipo de desarrollo:',
                style: Theme.of(context).textTheme.headline5!.copyWith(),
              ),
              const SizedBox(
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
                                            if (await canLaunch(e.link!)) {
                                              await launch(e.link!);
                                            } else {
                                              FlashHelper.errorBar(
                                                context,
                                                message:
                                                    'No puede acceder a ${e.link}',
                                              );
                                            }
                                          },
                                    trailing: e.link != null
                                        ? const Icon(Icons.link_off_outlined)
                                        : null,
                                  ))
                              .toList(),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 50),
              Text(
                'Nodo Central de Red - UH',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
              const SizedBox(height: 10),
              Text(
                'MATCOM - UH',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
              const SizedBox(height: 10),
              Text(
                'GRS - UH',
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
              GestureDetector(
                onTap: () async {
                  const url =
                      'https://raw.githubusercontent.com/covid19cuba/covid19cuba-app/master/LICENSE';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    FlashHelper.errorBar(
                      context,
                      message: 'No puede acceder a $url',
                    );
                  }
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Copyright 2021',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                      ),
                      Icon(
                        Icons.copyright,
                        color: Theme.of(context).textTheme.subtitle2!.color,
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                      ),
                      Text(
                        'GPL-3.0',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
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
