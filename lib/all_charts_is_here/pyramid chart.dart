import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_charts/all_charts_is_here/CustomAPPBAR.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PyramidChart extends StatelessWidget {
  const PyramidChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Customappbar(apptext: "Pyramid Chart"),
      body: Center(
        child: SfPyramidChart(
          title: ChartTitle(
              text: 'Half yearly sales analysis',
              textStyle: GoogleFonts.abyssinicaSil()),
          legend: const Legend(isVisible: true),
          series: PyramidSeries<PyramidChartData, String>(
            dataSource: chartData,
            xValueMapper: (PyramidChartData data, _) => data.month,
            yValueMapper: (PyramidChartData data, _) => data.sale,
            pointColorMapper: (PyramidChartData data, _) => data.color,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
          ),
        ),
      ),
    );
  }
}

class PyramidChartData {
  PyramidChartData(this.month, this.sale, this.color);
  final String month;
  final double sale;
  final Color color;
}

final List<PyramidChartData> chartData = [
  PyramidChartData('jan', 30, Colors.grey),
  PyramidChartData('feb', 40, Colors.lightGreen),
  PyramidChartData('apr', 20, Colors.blueGrey),
  PyramidChartData('mar', 10, Colors.brown),
];
