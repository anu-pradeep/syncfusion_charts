import 'package:flutter/material.dart';
import 'package:syncfusion_charts/all_charts_is_here/CustomAPPBAR.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


class Sparkbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const Customappbar(apptext: "SparkBar Chart"),
        body: Center(
          child: SfSparkBarChart(
            color: Colors.blueGrey,
            trackball: const SparkChartTrackball(
              activationMode: SparkChartActivationMode.tap,
            ),
            labelDisplayMode: SparkChartLabelDisplayMode.all,
            data: const <double>[1, 5, 2, 6, 3, 7, 4, 8, 5, 9, 6, 10],
          ),
        ),

    );
  }
}
