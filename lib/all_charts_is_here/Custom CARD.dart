import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomchartCard extends StatefulWidget {
  final String chartnames;
  const CustomchartCard({super.key, required this.chartnames});

  @override
  State<CustomchartCard> createState() => _CustomchartCardState();
}

class _CustomchartCardState extends State<CustomchartCard> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(color: Colors.blue[100],
        child: TextButton(onPressed: (){}, child: Text(widget.chartnames,style: GoogleFonts.abyssinicaSil(color: Colors.black),),),),
    )
    ;
  }
}
