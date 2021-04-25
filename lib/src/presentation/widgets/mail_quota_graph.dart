import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MailQuotaGraph extends StatelessWidget {
  final MailQuota quota;
  final bool animate;

  const MailQuotaGraph({
    Key? key,
    required this.quota,
    this.animate = true,
  }) : super(key: key);

  int get consumed => _bytesToMegaBytes(quota.consumed!.toDouble());

  int get leftQuota => _bytesToMegaBytes(
      min(quota.quota! - quota.consumed!, quota.quota!).toDouble());

  List<MailQuotaPart> get data => [
        MailQuotaPart(
          id: 0,
          title: 'Restantes',
          cant: leftQuota,
          color: const Color.fromARGB(152, 23, 102, 0),
        ),
        MailQuotaPart(
          id: 2,
          title: 'Ocupado',
          cant: consumed,
          color: const Color.fromARGB(152, 153, 0, 0),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height * 0.65,
          child: SfCircularChart(
            title: ChartTitle(
              text: 'Consumo (en MB)',
              textStyle: Theme.of(context).textTheme.subtitle2,
            ),
            legend: Legend(
              isVisible: true,
              overflowMode: LegendItemOverflowMode.wrap,
              position: LegendPosition.bottom,
              textStyle: Theme.of(context).textTheme.subtitle2,
            ),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: [
              DoughnutSeries<MailQuotaPart, String>(
                dataSource: data,
                xValueMapper: (data, _) => data.title,
                yValueMapper: (data, _) => data.cant,
                pointColorMapper: (data, _) => data.color,
                dataLabelSettings: DataLabelSettings(
                  isVisible: true,
                  labelPosition: ChartDataLabelPosition.outside,
                  useSeriesColor: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MailQuotaPart {
  int id;
  String title;
  int cant;
  Color color;

  MailQuotaPart({
    required this.id,
    required this.title,
    required this.cant,
    required this.color,
  });
}

int _bytesToMegaBytes(double bytes) {
  return bytes ~/ 1048576;
}
