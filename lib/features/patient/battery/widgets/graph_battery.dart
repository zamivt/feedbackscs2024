import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controllers/battery_controllers.dart';

import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';

class GraphBattery extends StatelessWidget {
  const GraphBattery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AppColorContainer(
          color: Theme.of(context).colorScheme.tertiary,
          isminpadding: true,
          headerbloc: LocaleKeys.graph5.tr(),
          widget: _flchartBattery(context)),
    );
  }

  _flchartBattery(context) {
    return GetBuilder(builder: (BatteryControler batteryController) {
      List<Map> batteries = batteryController.batteries.length < 5
          ? []
          : [
              {
                'Date': batteryController
                    .batteries[batteryController.batteries.length - 1].date,
                'Duration_battery': batteryController
                    .batteries[batteryController.batteries.length - 1]
                    .lengbattery,
              },
              {
                'Date': batteryController
                    .batteries[batteryController.batteries.length - 2].date,
                'Duration_battery': batteryController
                    .batteries[batteryController.batteries.length - 2]
                    .lengbattery,
              },
              {
                'Date': batteryController
                    .batteries[batteryController.batteries.length - 3].date,
                'Duration_battery': batteryController
                    .batteries[batteryController.batteries.length - 3]
                    .lengbattery,
              },
              {
                'Date': batteryController
                    .batteries[batteryController.batteries.length - 4].date,
                'Duration_battery': batteryController
                    .batteries[batteryController.batteries.length - 4]
                    .lengbattery,
              },
              {
                'Date': batteryController
                    .batteries[batteryController.batteries.length - 5].date,
                'Duration_battery': batteryController
                    .batteries[batteryController.batteries.length - 5]
                    .lengbattery,
              },
            ];

      var listdur = batteryController.batteries.length < 5
          ? []
          : [
              batteries[0]['Duration_battery'] as int,
              batteries[1]['Duration_battery'] as int,
              batteries[2]['Duration_battery'] as int,
              batteries[3]['Duration_battery'] as int,
              batteries[4]['Duration_battery'] as int,
            ];

      listdur.sort();

      double maxy = batteryController.batteries.length < 5
          ? 0
          : double.parse(listdur.last.toString());

      return Column(children: [
        Container(
          margin: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 10,
            right: 10,
          ),
          width: double.infinity,
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: AspectRatio(
            aspectRatio: 1.5,
            child: LineChart(
              LineChartData(
                  gridData: FlGridData(show: true),
                  backgroundColor: Colors.grey[100],
                  borderData: FlBorderData(
                      border: const Border(
                          bottom: BorderSide(), left: BorderSide())),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        String text = '';
                        switch (value.toInt()) {
                          case 4:
                            text =
                                '${batteries[0]['Date'].toString().substring(8, 10)}/${batteries[0]['Date'].toString().substring(5, 7)}';
                            break;
                          case 3:
                            text =
                                '${batteries[1]['Date'].toString().substring(8, 10)}/${batteries[1]['Date'].toString().substring(5, 7)}';
                            break;
                          case 2:
                            text =
                                '${batteries[2]['Date'].toString().substring(8, 10)}/${batteries[2]['Date'].toString().substring(5, 7)}';
                            break;
                          case 1:
                            text =
                                '${batteries[3]['Date'].toString().substring(8, 10)}/${batteries[3]['Date'].toString().substring(5, 7)}';
                            break;
                          case 0:
                            text =
                                '${batteries[4]['Date'].toString().substring(8, 10)}/${batteries[4]['Date'].toString().substring(5, 7)}';
                            break;
                        }

                        return Text(text);
                      },
                    )),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  minX: -1,
                  maxX: 5,
                  minY: 0.0,
                  maxY: maxy + 1,
                  lineBarsData: [
                    LineChartBarData(
                      color: Theme.of(context).colorScheme.surfaceTint,
                      spots: [
                        FlSpot(
                            0,
                            double.parse(
                                batteries[4]['Duration_battery'].toString())),
                        FlSpot(
                            1,
                            double.parse(
                                batteries[3]['Duration_battery'].toString())),
                        FlSpot(
                            2,
                            double.parse(
                                batteries[2]['Duration_battery'].toString())),
                        FlSpot(
                            3,
                            double.parse(
                                batteries[1]['Duration_battery'].toString())),
                        FlSpot(
                            4,
                            double.parse(
                                batteries[0]['Duration_battery'].toString())),
                      ],
                      isCurved: true,
                    )
                  ]),
              swapAnimationDuration: const Duration(seconds: 2),
              swapAnimationCurve: Curves.decelerate,
            ),
          ),
        )
      ]);
    });
  }
}
