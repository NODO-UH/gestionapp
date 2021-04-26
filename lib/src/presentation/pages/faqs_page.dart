import 'package:flutter/material.dart';
import 'package:gestionuh/src/utils/constants/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FaqsPage extends StatelessWidget {
  const FaqsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SelectableText('Preguntas Frecuentes'),
        centerTitle: true,
      ),
      body: Scrollbar(
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
                children: faqs.map((faq) {
                  return ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    title: Text(faq.question),
                    subtitle: Text(faq.answer),
                    isThreeLine: true,
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
