import 'package:flutter/material.dart';
import 'package:flutter_charts_yt/screen/charts/dougnut_chart_page.dart';
import 'package:flutter_charts_yt/screen/charts/line_chart_page.dart';
import 'package:flutter_charts_yt/screen/charts/pie_chart_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          LineChartPage(),
          PieChartPage(),
          DougnutChartPage(),
        ],
      ),
    );
  }
}
