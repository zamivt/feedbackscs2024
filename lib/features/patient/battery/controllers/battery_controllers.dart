import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../services/entities/0_battery.dart';

class BatteryControler extends GetxController {
  late List<Battery> _batteries;
  late Box<Battery> batterybox;
  List<Battery> get batteries => _batteries;

  BatteryControler() {
    batterybox = Hive.box<Battery>('batteries');
    _batteries = [];
    for (int i = 0; i < batterybox.values.length; i++) {
      _batteries.add(batterybox.getAt(i)!);
    }
  }
  addBattery(Battery battery) {
    _batteries.add(battery);
    batterybox.add(battery);
    update();
  }

  deleteBattery(Battery battery) {
    int index = _batteries.indexOf(battery);
    batterybox.delete(index);
    _batteries.removeWhere((element) => element.id == battery.id);
    update();
  }
}
