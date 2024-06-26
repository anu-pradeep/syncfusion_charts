import 'package:flutter/material.dart';
import 'package:syncfusion_charts/all_charts_is_here/CustomAPPBAR.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


class SparkLinechart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Customappbar(apptext: "SparkLine Chart"),
        body: Center(
          child: SfSparkLineChart(
            color: Colors.red,
            trackball: const SparkChartTrackball(
              activationMode: SparkChartActivationMode.tap,
            ),
            marker: const SparkChartMarker(
              displayMode: SparkChartMarkerDisplayMode.all,
              // color: Colors.red  // point color
            ),
            // labelDisplayMode: SparkChartLabelDisplayMode.all,
            data: const <double>[1, 5, 2, 6, 3, 7, 4, 8, 5, 9, 6, 10],
          ),
        ),

    );
  }
}
