import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_charts_yt/data/sales_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/sales_model.dart';

class LineChartPage extends StatefulWidget {
  const LineChartPage({super.key});

  @override
  State<LineChartPage> createState() => _LineChartPageState();
}

class _LineChartPageState extends State<LineChartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(
            text: "Yillik Satis",
            textStyle: const TextStyle(fontSize: 25),
          ),
          // tooltipBehavior: TooltipBehavior(enable: true),
          // crosshairBehavior: CrosshairBehavior(enable: true),

          legend: Legend(isVisible: true),
          series: <LineSeries<SalesModel, String>>[
            LineSeries(
              name: "X Market",
              color: Colors.orange,
              dataSource: SalesData.salesDataXMarket,
              xValueMapper: (SalesModel sales, _) => sales.year,
              yValueMapper: (SalesModel sales, _) => sales.salesQty,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            ),
            LineSeries(
              name: "Y Market",
              color: Colors.blueGrey,
              dataSource: SalesData.salesDataYMarket,
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
