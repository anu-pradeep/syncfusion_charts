import 'package:flutter/material.dart';
import 'package:syncfusion_charts/all_charts_is_here/CustomAPPBAR.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';



class SparkareaChart extends StatelessWidget {
  const SparkareaChart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const Customappbar(apptext: "Spark area Chart"),
        body: Center(
          child: SizedBox(
            height: 150,
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
        ),

    );
  }
}
