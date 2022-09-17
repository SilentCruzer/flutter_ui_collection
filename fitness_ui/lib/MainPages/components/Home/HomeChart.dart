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
    final List<ChartData> chartData = <ChartData>[
      ChartData('Sat', 21),
      ChartData('Sun', 24),
      ChartData('Mon', 35),
      ChartData('Tue', 38),
      ChartData('Wed', 54),
      ChartData('Thu', 21),
      ChartData('Fri', 24),
    ];
    return Container(
        child: Center(
            child: Container(
              height: 250,
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries>[
                      SplineSeries<ChartData, String>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y
                      )
                    ]
                )
            )
        )
    );
  }
}
class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
