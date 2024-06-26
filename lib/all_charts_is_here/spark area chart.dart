import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';



class SparkareaChart extends StatelessWidget {
  const SparkareaChart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Spark Area Chart'),
        ),
        body: Center(
          child: SfSparkAreaChart(
            color: Colors.grey,
            trackball: const SparkChartTrackball(
              activationMode: SparkChartActivationMode.tap,
            ),
            marker: const SparkChartMarker(
              displayMode: SparkChartMarkerDisplayMode.all,
            ),
            // labelDisplayMode: SparkChartLabelDisplayMode.all,
            data: const <double>[1, 5, 2, 6, 3, 7, 4, 8, 5, 9, 6, 10],
          ),
        ),

    );
  }
}
