import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gestionuh/src/data/models/models.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class QuotaGraph extends StatelessWidget {
  final Quota quota;
  final bool animate;

  const QuotaGraph({
    Key? key,
    required this.quota,
    this.animate = true,
  }) : super(key: key);

  int get consumed => _bytesToMegaBytes(quota.consumed!.toDouble());

  int get leftBonus =>
      _bytesToMegaBytes(max(quota.bonus! - quota.consumed!, 0).toDouble());

  int get leftQuota => _bytesToMegaBytes(
      min(quota.quota! + quota.bonus! - quota.consumed!, quota.quota!)
          .toDouble());

  List<QuotaPart> get data => [
        QuotaPart(
          id: 0,
          title: 'Restantes',
          cant: leftQuota,
          color: const Color.fromARGB(152, 23, 102, 0),
        ),
        QuotaPart(
          id: 1,
          title: 'Bono',
          cant: leftBonus,
          color: const Color.fromARGB(152, 0, 82, 153),
        ),
        QuotaPart(
          id: 2,
          title: 'Consumido',
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
              DoughnutSeries<QuotaPart, String>(
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

class QuotaPart {
  int id;
  String title;
  int cant;
  Color color;

  QuotaPart({
    required this.id,
    required this.title,
    required this.cant,
    required this.color,
  });
}

int _bytesToMegaBytes(double bytes) {
  return bytes ~/ 1048576;
}
