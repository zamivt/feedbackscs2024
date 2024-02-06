import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../services/entities/24_double_short_task.dart';

class DoubleShortTaskControler extends GetxController {
  late List<DoubleShortTask> _doubleshorttasks;
  late Box<DoubleShortTask> doubleshorttaskbox;
  List<DoubleShortTask> get doubleshorttask => _doubleshorttasks;

  DoubleShortTaskControler() {
    doubleshorttaskbox = Hive.box<DoubleShortTask>('doubleshorttasks');
    _doubleshorttasks = [];
    for (int i = 0; i < doubleshorttaskbox.values.length; i++) {
      _doubleshorttasks.add(doubleshorttaskbox.getAt(i)!);
    }
  }

  addDoubleShortTask(DoubleShortTask doubleshorttask) {
    _doubleshorttasks.add(doubleshorttask);
    doubleshorttaskbox.add(doubleshorttask);
    update();
  }

  clearDoubleShortTask() {
    if (_doubleshorttasks.isNotEmpty) {
      _doubleshorttasks = [];
      doubleshorttaskbox.clear;
      update();
    }
  }
}
