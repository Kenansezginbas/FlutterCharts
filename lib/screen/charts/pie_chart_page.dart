import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_charts_yt/data/sales_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/sales_model.dart';

class PieChartPage extends StatefulWidget {
  const PieChartPage({super.key});

  @override
  State<PieChartPage> createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfCircularChart(
          title: ChartTitle(
            text: "Yillik Satis",
            textStyle: const TextStyle(fontSize: 25),
          ),
          tooltipBehavior: TooltipBehavior(enable: true),
          legend: Legend(isVisible: true),
          series: <CircularSeries<SalesModel, String>>[
            PieSeries(
              name: "X Market",
              explode: true,
              explodeIndex: 2,
              dataSource: SalesData.salesDataXMarket,
              xValueMapper: (SalesModel sales, _) => sales.year,
              yValueMapper: (SalesModel sales, _) => sales.salesQty,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}
