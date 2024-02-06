import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/patient/battery/widgets/bar_battery.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../core/ui/theme/appimages.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/battery_controllers.dart';

import '../widgets/tab_battery.dart';
import 'battery_form.dart';

class BatteryPage extends StatelessWidget {
  const BatteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppPictureContainer(
                widget1: Container(),
                widget2: Container(),
                picture: AppImages.battery,
                title: LocaleKeys.bebattery.tr(),
                height: 300,
              ),
              const TabBattery(),
              GetBuilder(builder: (BatteryControler batteryControler) {
                return batteryControler.batteries.length <= 5
                    ? Container()
                    : Column(
                        children: [
                          BarBattery(),
                        ],
                      );
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 6.0,
        onPressed: () {
          showModalBottomSheet(
              isDismissible: false,
              context: context,
              builder: (context) {
                return const BatteryForm();
              });
        },
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
    );
  }
}
