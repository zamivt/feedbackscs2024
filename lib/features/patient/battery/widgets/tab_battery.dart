import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../controllers/battery_controllers.dart';
import '../../../../core/router/route_names.dart';

import '../../../../l10n/locale_keys.g.dart';

class TabBattery extends StatelessWidget {
  const TabBattery({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (BatteryControler batteryControler) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: AppColorContainer(
            color: Theme.of(context).colorScheme.secondary,
            widget: batteryControler.batteries.isEmpty
                ? SizedBox(
                    height: 400,
                    child: Center(
                      child: Text(
                        LocaleKeys.nobattery.tr(),
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  )
                : Column(children: [
                    AppRow(
                      headerrow: LocaleKeys.firstcharge.tr(),
                      bodyrow:
                          '${DateFormat.d().format(batteryControler.batteries[0].date)} /${DateFormat.M().format(batteryControler.batteries[0].date)}/${DateFormat.y().format(batteryControler.batteries[0].date)}',
                    ),
                    AppRow(
                        headerrow: LocaleKeys.lastcharge.tr(),
                        bodyrow:
                            '${DateFormat.d().format(batteryControler.batteries[batteryControler.batteries.length - 1].date)} /${DateFormat.M().format(batteryControler.batteries[batteryControler.batteries.length - 1].date)}/${DateFormat.y().format(batteryControler.batteries[batteryControler.batteries.length - 1].date)}'),
                    AppRow(
                        headerrow: LocaleKeys.numbercharge.tr(),
                        bodyrow: batteryControler.batteries.length.toString()),
                    AppRow(
                        headerrow: LocaleKeys.averagecharge.tr(),
                        bodyrow: batteryControler.batteries.length < 2
                            ? batteryControler
                                .batteries[
                                    batteryControler.batteries.length - 1]
                                .summarybattery!
                                .toString()
                            : (batteryControler
                                            .batteries[batteryControler
                                                    .batteries.length -
                                                1]
                                            .summarybattery!
                                            .toInt() ~/
                                        (batteryControler
                                            .batteries[batteryControler
                                                    .batteries.length -
                                                1]
                                            .countwithoutcoment!
                                            .toInt()))
                                    .toString() +
                                ' ' +
                                LocaleKeys.sdays.tr()),
                    Text(
                      LocaleKeys.withoutcharge.tr(),
                      style: Theme.of(context).textTheme.titleSmall,
                      textAlign: TextAlign.end,
                    ),
                    AppDivider(),
                    AppTextButton(
                      linkbutton: RouteNames.patientbatterylist,
                      text: LocaleKeys.showdiarycharge.tr(),
                    )
                  ]),
            headerbloc: LocaleKeys.diarybattery.tr()),
      );
    });
  }
}
