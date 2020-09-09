import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:design_3/models/chart.dart';

class CustomRoundedBars extends StatelessWidget {
  final List<dynamic> data;
  final bool animate;

  CustomRoundedBars(this.data, {this.animate});

  @override
  Widget build(BuildContext context) {
    var seriesList = _createSampleData(data);

    return new charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.grouped,
      defaultRenderer: new charts.BarRendererConfig(
          cornerStrategy: const charts.ConstCornerStrategy(30)),
    );
  }

  static List<charts.Series<Chart, String>> _createSampleData(dynamic data) {
    return [
      new charts.Series<Chart, String>(
        id: 'chart1',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (Chart chart, _) => chart.day,
        measureFn: (Chart chart, _) => chart.frekuensi,
        data: data,
        fillColorFn: (Chart chart, _) =>
            charts.ColorUtil.fromDartColor(Colors.transparent),
      ),
      new charts.Series<Chart, String>(
        id: 'chart',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Color(0xFFf56767)),
        domainFn: (Chart chart, _) => chart.day,
        measureFn: (Chart chart, _) => chart.frekuensi,
        data: data,
      ),
      new charts.Series<Chart, String>(
        id: 'chart2',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Color(0xFFf56767)),
        domainFn: (Chart mileage, _) => mileage.day,
        measureFn: (Chart mileage, _) => mileage.frekuensi,
        data: data,
        fillColorFn: (Chart mileage, _) =>
            charts.ColorUtil.fromDartColor(Colors.transparent),
      ),
    ];
  }
}
