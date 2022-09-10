import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeChart extends StatefulWidget {
  const HomeChart({Key? key}) : super(key: key);

  @override
  State<HomeChart> createState() => _HomeChartState();
}

class _HomeChartState extends State<HomeChart> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2010, 35),
      ChartData(2011, 13),
      ChartData(2012, 34),
      ChartData(2013, 27),
      ChartData(2014, 40)
    ];
    return Container(
      height: 200,
        child: Center(
            child: Container(
                child: SfCartesianChart(series: <ChartSeries>[
      // Renders spline chart
      SplineSeries<ChartData, int>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y)
    ]))));
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final int x;
  final double? y;
}
