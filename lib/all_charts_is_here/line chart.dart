import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_charts/all_charts_is_here/CustomAPPBAR.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartOne extends StatefulWidget {
  const ChartOne({super.key});

  @override
  State<ChartOne> createState() => _ChartOneState();
}

class _ChartOneState extends State<ChartOne> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Customappbar(apptext: "Cartesian Chart"),
        body: Column(children: [
          //Initialize the chart widget [this is line chart]
          SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              // Chart title
              title: ChartTitle(
                  text: 'Half yearly sales analysis',
                  textStyle: GoogleFonts.abyssinicaSil()),
              // Enable legend
              legend:
                  const Legend(isVisible: true, iconBorderColor: Colors.pink),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <CartesianSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                    color: Colors.pink,
                    // dataSource: list name
                    dataSource: data,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    name: 'Sales',
                    // Enable data label
                    dataLabelSettings: const DataLabelSettings(isVisible: true))
              ]),
        ]));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
