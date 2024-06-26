
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_charts/all_charts_is_here/CustomAPPBAR.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class DoughnutChartSample extends StatelessWidget {
  final List<ChartData> chartData = [
    ChartData('Category 1', 30, Colors.purple),
    ChartData('Category 2', 25, Colors.green),
    ChartData('Category 3', 15, Colors.white),
    ChartData('Category 4', 20, Colors.yellowAccent),
    ChartData('Category 5', 10, Colors.deepOrangeAccent),
  ];

  DoughnutChartSample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Customappbar(apptext: "Doughnut Chart"),
      body: Center(
        child: SfCircularChart(
          title: ChartTitle(
            text: "Half yearly sales analysis",
            textStyle: GoogleFonts.abyssinicaSil(),
          ),
          legend: const Legend(isVisible: true),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <DoughnutSeries<ChartData, String>>[
            DoughnutSeries<ChartData, String>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              pointColorMapper: (ChartData data, _) => data.color,
              // Enable data label
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y,
    this.color,
  );
  final String x;
  final double y;
  final Color color;
}
