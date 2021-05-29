import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GdpPage extends StatefulWidget {
  GdpPage({Key key}) : super(key: key);

  @override
  _GdpPageState createState() => _GdpPageState();
}

class _GdpPageState extends State<GdpPage> {
  List<GDPData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 170,
      child: SfCircularChart(
        series: <CircularSeries>[
          DoughnutSeries<GDPData, String>(
              dataSource: _chartData,
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp)
        ],
      ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData("bangladesh", 3000),
      GDPData("bangladesh", 150),
      GDPData("bangladesh", 50),
    ];
    return chartData;
  }
}

class GDPData {
  final String continent;
  final int gdp;

  GDPData(this.continent, this.gdp);
}
