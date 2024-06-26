import 'package:flutter/material.dart';
import 'all_charts_is_here/firstpage_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // home: ChartOne(),
      home: FirstPageUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}


