import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_charts/all_charts_is_here/funnel%20chart.dart';
import 'package:syncfusion_charts/all_charts_is_here/pyramid%20chart.dart';
import 'package:syncfusion_charts/all_charts_is_here/spark%20area%20chart.dart';
import 'package:syncfusion_charts/all_charts_is_here/sparkBar%20chart.dart';
import 'Doughnut chart.dart';
import 'Spark line chart.dart';
import 'circular chart.dart';
import 'line chart.dart';

class FirstPageUI extends StatefulWidget {
  const FirstPageUI({super.key});

  @override
  State<FirstPageUI> createState() => _FirstPageUIState();
}

class _FirstPageUIState extends State<FirstPageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Types of Flutter Charts ",
          style: GoogleFonts.abyssinicaSil(
              fontWeight: FontWeight.bold, color: Colors.blue[900]),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue[100],
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChartOne()));
                },
                child: Text(
                  "Cartesian Chart",
                  style: GoogleFonts.abyssinicaSil(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue[100],
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Circularchart()));
                },
                child: Text(
                  "Circular Chart",
                  style: GoogleFonts.abyssinicaSil(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue[100],
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PyramidChart()));
                },
                child: Text(
                  "Pyramid Chart",
                  style: GoogleFonts.abyssinicaSil(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue[100],
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FunnelChart()));
                },
                child: Text(
                  "Funnel Chart",
                  style: GoogleFonts.abyssinicaSil(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue[100],
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SparkLinechart()));
                },
                child: Text(
                  "SparkLine Chart",
                  style: GoogleFonts.abyssinicaSil(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue[100],
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SparkareaChart()));
                },
                child: Text(
                  "Spark Area Chart",
                  style: GoogleFonts.abyssinicaSil(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue[100],
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Sparkbar()));
                },
                child: Text(
                  "SparkBar Chart",
                  style: GoogleFonts.abyssinicaSil(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blue[100],
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DoughnutChartSample(),));
                },
                child: Text(
                  "Doughnut Chart",
                  style: GoogleFonts.abyssinicaSil(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
