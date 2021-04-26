import 'package:flutter/material.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';
import 'package:gestionuh/src/utils/open_url.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HelpfulLinksPage extends StatelessWidget {
  const HelpfulLinksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            width: getValueForScreenType<double>(
              context: context,
              mobile: MediaQuery.of(context).size.width,
              tablet: MediaQuery.of(context).size.width * 0.5,
            ),
            child: Column(
              children: helpfulLinks.map((helpfulLink) {
                return ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  title: Text(helpfulLink.name),
                  subtitle: Text(helpfulLink.url),
                  trailing: const Icon(Icons.link),
                  onTap: () async {
                    await openUrl(context, helpfulLink.url);
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
