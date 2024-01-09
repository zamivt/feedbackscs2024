import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/21_longtasklie.dart';

class LongTaskLieControler extends GetxController {
  late List<LongTaskLie> _longtasklies;
  late Box<LongTaskLie> longtaskliebox;
  List<LongTaskLie> get tasklonglies => _longtasklies;

  TaskLongLieControler() {
    longtaskliebox = Hive.box<LongTaskLie>('longtasklies');
    _longtasklies = [];
    for (int i = 0; i < longtaskliebox.values.length; i++) {
      _longtasklies.add(longtaskliebox.getAt(i)!);
    }
  }

  addTaskLongLie(LongTaskLie longtasklie) {
    _longtasklies.add(longtasklie);
    longtaskliebox.add(longtasklie);
    update();
  }

  deleteTaskLongLie(LongTaskLie longtasklie) {
    int index = _longtasklies.indexOf(longtasklie);
    longtaskliebox.delete(index);
    _longtasklies.removeWhere((element) => element.id == longtasklie.id);
    update();
  }
}
