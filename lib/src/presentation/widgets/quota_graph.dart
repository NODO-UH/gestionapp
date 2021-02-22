import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:gestionuh/src/data/models.dart';

class QuotaGraph extends StatelessWidget {
  final Quota quota;
  final bool animate;
  double get consumed => _bytesToMegaBytes(quota.consumed.toDouble());
  double get leftBonus =>
      _bytesToMegaBytes(max(quota.bonus - quota.consumed, 0).toDouble());
  double get leftQuota => _bytesToMegaBytes(
      min(quota.quota + quota.bonus - quota.consumed, quota.quota).toDouble());
  List<QuotaPart> get data => [
        QuotaPart(
          id: 0,
          title: 'Restantes',
          cant: leftQuota,
          color: charts.Color(a: 254, r: 0, g: 254, b: 0),
        ),
        QuotaPart(
          id: 1,
          title: 'Bonus',
          cant: leftBonus,
          color: charts.Color(a: 254, r: 0, g: 0, b: 254),
        ),
        QuotaPart(
          id: 2,
          title: 'Consumido',
          cant: consumed,
          color: charts.Color(a: 254, r: 254, g: 0, b: 0),
        ),
      ];

  const QuotaGraph({
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
          'Consumo (en Mb)',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Container(
          height: 300,
          width: 300,
          child: charts.PieChart(
            _buildData(),
            animate: animate,
            defaultRenderer: charts.ArcRendererConfig(
              arcWidth: 40,
            ),
            behaviors: [
              new charts.DatumLegend(
                position: charts.BehaviorPosition.bottom,
                outsideJustification: charts.OutsideJustification.middle,
                horizontalFirst: true,
                desiredMaxRows: 3,
                cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                entryTextStyle: charts.TextStyleSpec(
                  color: charts.MaterialPalette.black,
                  fontFamily: 'Georgia',
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<charts.Series<QuotaPart, String>> _buildData() {
    return [
      charts.Series<QuotaPart, String>(
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

class QuotaPart {
  int id;
  String title;
  double cant;
  charts.Color color;

  QuotaPart({
    this.id,
    this.title,
    this.cant,
    this.color,
  });
}

double _bytesToMegaBytes(double bytes) {
  return double.parse((bytes / 1048576).toStringAsFixed(4));
}
