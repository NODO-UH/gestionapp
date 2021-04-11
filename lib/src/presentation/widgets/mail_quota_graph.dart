import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gestionuh/src/data/models.dart';

class MailQuotaGraph extends StatelessWidget {
  final MailQuota quota;
  final bool animate;

  const MailQuotaGraph({
    Key key,
    this.quota,
    this.animate: true,
  }) : super(key: key);

  int get consumed => _bytesToMegaBytes(quota.consumed.toDouble());

  int get leftQuota => _bytesToMegaBytes(
      min(quota.quota - quota.consumed, quota.quota).toDouble());

  List<MailQuotaPart> get data => [
        MailQuotaPart(
          id: 0,
          title: 'Restantes',
          cant: leftQuota,
          color: Color.fromARGB(152, 23, 102, 0),
        ),
        MailQuotaPart(
          id: 2,
          title: 'Ocupado',
          cant: consumed,
          color: Color.fromARGB(152, 153, 0, 0),
        ),
      ];

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
          margin: EdgeInsets.all(20),
          height: 250,
          child: PieChart(
            PieChartData(
              borderData: FlBorderData(show: false),
              sectionsSpace: 0,
              centerSpaceRadius: MediaQuery.of(context).size.width / 6,
              sections: List.generate(
                data.length,
                (i) => PieChartSectionData(
                  radius: 50,
                  color: data[i].color,
                  value: data[i].cant.toDouble(),
                  showTitle: false,
                ),
              ),
            ),
          ),
        ),
        for (var item in data)
          ListTile(
            leading: Icon(
              Icons.circle,
              color: item.color,
            ),
            title: Text(
              item.title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            trailing: Text(
              '${item.cant} MB',
              style: Theme.of(context).textTheme.subtitle2,
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
    this.id,
    this.title,
    this.cant,
    this.color,
  });
}

int _bytesToMegaBytes(double bytes) {
  return bytes ~/ 1048576;
}
