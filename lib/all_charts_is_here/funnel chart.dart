import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_charts/all_charts_is_here/CustomAPPBAR.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FunnelChart extends StatelessWidget {
  const FunnelChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Customappbar(apptext: "Funnel Chart"),
      body: Center(
        child: SfFunnelChart(
            title: ChartTitle(
                text: 'Half yearly sales analysis',
                textStyle: GoogleFonts.abyssinicaSil()),
            legend: const Legend(isVisible: true),
            series: FunnelSeries<FunnelChartdata, String>(
              dataSource: funneldata,
              xValueMapper: (FunnelChartdata chart, _) => chart.month,
              yValueMapper: (FunnelChartdata chart, _) => chart.sale,
              pointColorMapper: (FunnelChartdata chart, _) => chart.color,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            )),
      ),
    );
  }
}

class FunnelChartdata {
  FunnelChartdata(this.month, this.sale, this.color);
  final String month;
  final double sale;
  final Color color;
}

final List<FunnelChartdata> funneldata = [
  FunnelChartdata('jan ', 30, Colors.grey),
  FunnelChartdata('feb', 40, Colors.lightGreen),
  FunnelChartdata('mar', 20, Colors.blueGrey),
  FunnelChartdata('apr', 10, Colors.brown),
];
