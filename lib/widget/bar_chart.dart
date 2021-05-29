import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatefulWidget {
  BarChart({Key key}) : super(key: key);

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  List<ExpenseData> _chartData;
  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      series: <ChartSeries>[
        StackedColumn100Series<ExpenseData, String>(
            dataSource: _chartData,
            xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
            yValueMapper: (ExpenseData exp, _) => exp.father),
        StackedColumn100Series<ExpenseData, String>(
            dataSource: _chartData,
            xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
            yValueMapper: (ExpenseData exp, _) => exp.mother),
        StackedColumn100Series<ExpenseData, String>(
            dataSource: _chartData,
            xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
            yValueMapper: (ExpenseData exp, _) => exp.son),
        StackedColumn100Series<ExpenseData, String>(
            dataSource: _chartData,
            xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
            yValueMapper: (ExpenseData exp, _) => exp.daughter),
      ],
      primaryXAxis: CategoryAxis(),
    );
  }

  List<ExpenseData> getChartData() {
    final List<ExpenseData> chartData = [
      ExpenseData('Good To Go', 80, 0, 0, 20),
      ExpenseData('On Job', 0, 0, 100, 0),
      ExpenseData('Accident', 0, 0, 100, 0),
      ExpenseData('Repair', 0, 0, 100, 0),
      ExpenseData('Breakdown', 0, 0, 100, 0),
    ];
    return chartData;
  }
}

class ExpenseData {
  final String expenseCategory;
  final num father;
  final num mother;
  final num son;
  final num daughter;

  ExpenseData(
      this.expenseCategory, this.father, this.mother, this.son, this.daughter);
}
