import 'package:flutter/cupertino.dart';
import 'package:gestionuh/src/presentation/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl(BuildContext context, String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    FlashHelper.errorBar(
      context,
      message: 'No puede acceder a $url',
    );
  }
}
