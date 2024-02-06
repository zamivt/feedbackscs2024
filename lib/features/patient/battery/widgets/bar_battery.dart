import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:feedbackscs2024/features/patient/battery/controllers/battery_controllers.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class BarBattery extends StatelessWidget {
  BarBattery({super.key});
  final _batteryController = Get.find<BatteryControler>();

  @override
  Widget build(BuildContext context) {
    List<Map> batteries = _batteryController.batteries.length < 5
        ? []
        : [
            {
              'Date': _batteryController
                  .batteries[_batteryController.batteries.length - 1].date,
              'Duration_battery': _batteryController
                  .batteries[_batteryController.batteries.length - 1]
                  .lengbattery,
            },
            {
              'Date': _batteryController
                  .batteries[_batteryController.batteries.length - 2].date,
              'Duration_battery': _batteryController
                  .batteries[_batteryController.batteries.length - 2]
                  .lengbattery,
            },
            {
              'Date': _batteryController
                  .batteries[_batteryController.batteries.length - 3].date,
              'Duration_battery': _batteryController
                  .batteries[_batteryController.batteries.length - 3]
                  .lengbattery,
            },
            {
              'Date': _batteryController
                  .batteries[_batteryController.batteries.length - 4].date,
              'Duration_battery': _batteryController
                  .batteries[_batteryController.batteries.length - 4]
                  .lengbattery,
            },
            {
              'Date': _batteryController
                  .batteries[_batteryController.batteries.length - 5].date,
              'Duration_battery': _batteryController
                  .batteries[_batteryController.batteries.length - 5]
                  .lengbattery,
            },
          ];

    var listdur = _batteryController.batteries.length < 5
        ? []
        : [
            batteries[0]['Duration_battery'] as int,
            batteries[1]['Duration_battery'] as int,
            batteries[2]['Duration_battery'] as int,
            batteries[3]['Duration_battery'] as int,
            batteries[4]['Duration_battery'] as int,
          ];

    return AppColorContainer(
      color: Theme.of(context).colorScheme.tertiary,
      headerbloc: LocaleKeys.graph5.tr(),
      widget: Container(
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.only(top: 20),
        color: Colors.grey.shade200,
        child: AspectRatio(
          aspectRatio: 2,
          child: BarChart(
            swapAnimationDuration: const Duration(milliseconds: 1500),
            swapAnimationCurve: Curves.linear,
            BarChartData(
                gridData: FlGridData(
                  show: true,
                ),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                    reservedSize: 42,
                  )),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 42,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 42,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                borderData: FlBorderData(
                    border: const Border(
                  top: BorderSide.none,
                  right: BorderSide.none,
                  left: BorderSide(width: 1),
                  bottom: BorderSide(width: 1),
                )),
                groupsSpace: 10,
                barGroups: [
                  BarChartGroupData(x: 0, barRods: [
                    BarChartRodData(
                        color: Theme.of(context).colorScheme.onSurface,
                        width: 20,
                        borderRadius: BorderRadius.circular(0),
                        toY: double.parse(listdur[4].toString()))
                  ]),
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(
                        color: Theme.of(context).colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(0),
                        width: 20,
                        toY: double.parse(listdur[3].toString()))
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(
                        width: 20,
                        color: Theme.of(context).colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(0),
                        toY: double.parse(listdur[2].toString()))
                  ]),
                  BarChartGroupData(x: 3, barRods: [
                    BarChartRodData(
                        width: 20,
                        color: Theme.of(context).colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(0),
                        toY: double.parse(listdur[1].toString()))
                  ]),
                  BarChartGroupData(x: 4, barRods: [
                    BarChartRodData(
                        color: Theme.of(context).colorScheme.onSurface,
                        width: 20,
                        borderRadius: BorderRadius.circular(0),
                        toY: double.parse(listdur[0].toString()))
                  ]),
                ]),
          ),
        ),
      ),
    );
  }
}

Widget bottomTitles(double value, TitleMeta meta) {
  final batteryController = Get.find<BatteryControler>();
  List<Map> batteries = batteryController.batteries.length < 5
      ? []
      : [
          {
            'Date': batteryController
                .batteries[batteryController.batteries.length - 1].date,
            'Duration_battery': batteryController
                .batteries[batteryController.batteries.length - 1].lengbattery,
          },
          {
            'Date': batteryController
                .batteries[batteryController.batteries.length - 2].date,
            'Duration_battery': batteryController
                .batteries[batteryController.batteries.length - 2].lengbattery,
          },
          {
            'Date': batteryController
                .batteries[batteryController.batteries.length - 3].date,
            'Duration_battery': batteryController
                .batteries[batteryController.batteries.length - 3].lengbattery,
          },
          {
            'Date': batteryController
                .batteries[batteryController.batteries.length - 4].date,
            'Duration_battery': batteryController
                .batteries[batteryController.batteries.length - 4].lengbattery,
          },
          {
            'Date': batteryController
                .batteries[batteryController.batteries.length - 5].date,
            'Duration_battery': batteryController
                .batteries[batteryController.batteries.length - 5].lengbattery,
          },
        ];
  final titles = <String>[
    '${batteries[4]['Date'].toString().substring(8, 10)}/${batteries[4]['Date'].toString().substring(5, 7)}',
    '${batteries[3]['Date'].toString().substring(8, 10)}/${batteries[3]['Date'].toString().substring(5, 7)}',
    '${batteries[2]['Date'].toString().substring(8, 10)}/${batteries[2]['Date'].toString().substring(5, 7)}',
    '${batteries[1]['Date'].toString().substring(8, 10)}/${batteries[1]['Date'].toString().substring(5, 7)}',
    '${batteries[0]['Date'].toString().substring(8, 10)}/${batteries[0]['Date'].toString().substring(5, 7)}',
  ];

  final Widget text = Text(
    titles[value.toInt()],
    style: const TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  );

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 16,
    child: text,
  );
}
