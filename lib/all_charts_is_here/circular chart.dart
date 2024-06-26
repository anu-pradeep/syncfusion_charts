import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_charts/all_charts_is_here/CustomAPPBAR.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Circularchart extends StatefulWidget {
  const Circularchart({super.key});

  @override
  State<Circularchart> createState() => _CircularchartState();
}

class _CircularchartState extends State<Circularchart> {
  List<productData> details = [
    productData(45, "jun", Colors.blue),
    productData(25, "july", Colors.grey),
    productData(50, "aug", Colors.red),
    productData(10, "sep", Colors.green),
    productData(48, "oct", Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Customappbar(apptext: "Circular Chart"),
      body: Center(
        child: SfCircularChart(
          title: ChartTitle(
            text: "Half yearly sales analysis",
            textStyle: GoogleFonts.abyssinicaSil(),
          ),
          //legend= indicator
          legend: const Legend(isVisible: true),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <PieSeries<productData, String>>[
            PieSeries<productData, String>(
              // strokeColor: Colors.green,   // border of circle
              dataSource: details,
              xValueMapper: (productData product, _) => product.year,
              yValueMapper: (productData product, _) => product.sale,
              pointColorMapper: (productData product, _) => product.color,
              name: "sales",
              // dataLabelSettings: const DataLabelSettings(isVisible: true),
              explode: true,
            )
          ],
        ),
      ),
    );
  }
}

class productData {
  productData(this.sale, this.year, this.color);
  final String year;
  final double sale;
  final Color color;
}
