import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      getPieChartData(),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(touchCallback: (onTouch, onResponse) {
        currentIndex = onResponse?.touchedSection?.touchedSectionIndex ?? -1;
        setState(
          () {},
        );
      }),
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0xFF208BC7),
          showTitle: false,
          radius: 0 == currentIndex ? 60 : 50,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xFF4DB7F2),
          showTitle: false,
          radius: 1 == currentIndex ? 60 : 50,
        ),
        PieChartSectionData(
          radius: 2 == currentIndex ? 60 : 50,
          value: 20,
          color: const Color(0xFF064060),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0xFFE2DECD),
          showTitle: false,
          radius: 3 == currentIndex ? 60 : 50,
        ),
      ],
    );
  }
}
