import 'package:admin_dashboard/style/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

const Color dark = AppColors.black;
const Color normal = AppColors.secondary;
const Color light = AppColors.white;

List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
  return [
    BarChartGroupData(
      x: 0,
      barsSpace: barsSpace,
      barRods: [
        BarChartRodData(
          toY: 17000000000,
          rodStackItems: [
            BarChartRodStackItem(0, 2000000000, dark),
            BarChartRodStackItem(2000000000, 12000000000, normal),
            BarChartRodStackItem(12000000000, 17000000000, light),
          ],
          borderRadius: BorderRadius.zero,
          width: barsWidth,
        ),
        BarChartRodData(
          toY: 24000000000,
          rodStackItems: [
            BarChartRodStackItem(0, 13000000000, dark),
            BarChartRodStackItem(13000000000, 14000000000, normal),
            BarChartRodStackItem(14000000000, 24000000000, light),
          ],
          borderRadius: BorderRadius.zero,
          width: barsWidth,
        ),
        BarChartRodData(
          toY: 23000000000.5,
          rodStackItems: [
            BarChartRodStackItem(0, 6000000000.5, dark),
            BarChartRodStackItem(6000000000.5, 18000000000, normal),
            BarChartRodStackItem(18000000000, 23000000000.5, light),
          ],
          borderRadius: BorderRadius.zero,
          width: barsWidth,
        ),
        BarChartRodData(
          toY: 29000000000,
          rodStackItems: [
            BarChartRodStackItem(0, 9000000000, dark),
            BarChartRodStackItem(9000000000, 15000000000, normal),
            BarChartRodStackItem(15000000000, 29000000000, light),
          ],
          borderRadius: BorderRadius.zero,
          width: barsWidth,
        ),
        BarChartRodData(
          toY: 32000000000,
          rodStackItems: [
            BarChartRodStackItem(0, 2000000000.5, dark),
            BarChartRodStackItem(2000000000.5, 17000000000.5, normal),
            BarChartRodStackItem(17000000000.5, 32000000000, light),
          ],
          borderRadius: BorderRadius.zero,
          width: barsWidth,
        ),
      ],
    ),
  ];
}
