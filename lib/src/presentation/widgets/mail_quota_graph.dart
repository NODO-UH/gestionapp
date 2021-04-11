import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:gestionuh/src/data/models.dart';

class MailQuotaGraph extends StatelessWidget {
  final MailQuota quota;
  final bool animate;
  int get consumed => _bytesToMegaBytes(quota.consumed.toDouble());
  int get leftQuota => _bytesToMegaBytes(
      min(quota.quota - quota.consumed, quota.quota).toDouble());
  List<MailQuotaPart> get data => [
        MailQuotaPart(
          id: 0,
          title: 'Restantes',
          cant: leftQuota,
          color: charts.Color(a: 152, r: 23, g: 102, b: 0),
        ),
        MailQuotaPart(
          id: 2,
          title: 'Ocupado',
          cant: consumed,
          color: charts.Color(a: 152, r: 153, g: 0, b: 0),
        ),
      ];

  const MailQuotaGraph({
    Key key,
    this.quota,
    this.animate: true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Consumo (en MB)',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Container(
          height: 340,
          child: charts.PieChart(
            _buildData(),
            animate: animate,
            defaultRenderer: charts.ArcRendererConfig(
              arcWidth: 40,
            ),
            behaviors: [
              charts.DatumLegend(
                position: charts.BehaviorPosition.bottom,
                cellPadding: EdgeInsets.all(10),
                showMeasures: true,
                legendDefaultMeasure: charts.LegendDefaultMeasure.firstValue,
                measureFormatter: (measure) => '$measure MB',
                desiredMaxColumns: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<charts.Series<MailQuotaPart, String>> _buildData() {
    return [
      charts.Series<MailQuotaPart, String>(
        id: 'Consumo (mb)',
        data: data,
        domainFn: (datum, index) => datum.title,
        measureFn: (datum, index) => datum.cant,
        colorFn: (datum, index) => datum.color,
        labelAccessorFn: (datum, index) => '${datum.title}',
      ),
    ];
  }
}

class MailQuotaPart {
  int id;
  String title;
  int cant;
  charts.Color color;

  MailQuotaPart({
    this.id,
    this.title,
    this.cant,
    this.color,
  });
}

int _bytesToMegaBytes(double bytes) {
  return bytes ~/ 1048576;
}
