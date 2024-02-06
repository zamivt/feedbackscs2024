import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../services/entities/4_short_task_lie.dart';

class ShortTaskLieControler extends GetxController {
  late List<ShortTaskLie> _shorttasklies;
  late Box<ShortTaskLie> shorttaskliebox;
  List<ShortTaskLie> get shorttasklies => _shorttasklies;

  ShortTaskLieControler() {
    shorttaskliebox = Hive.box<ShortTaskLie>('shorttasklies');
    _shorttasklies = [];
    for (int i = 0; i < shorttaskliebox.values.length; i++) {
      _shorttasklies.add(shorttaskliebox.getAt(i)!);
    }
  }

  addShortTaskLie(ShortTaskLie shorttasklie) {
    _shorttasklies.add(shorttasklie);
    shorttaskliebox.add(shorttasklie);
    update();
  }

  deleteShortTaskLie(String id) {
    int index;
    for (int i = 0; i < shorttasklies.length; i++) {
      if (shorttasklies[i].id == id) {
        index = i;
        shorttaskliebox.delete(index);
        _shorttasklies.removeAt(index);
      }
    }

    update();
  }

  addAmpCondition(String id, double condamplit) {
    int index;
    for (int i = 0; i < shorttasklies.length; i++) {
      if (shorttasklies[i].id == id) {
        index = i;

        shorttasklies[index].amplit = condamplit;
        shorttasklies[index].fixformula =
            'el:${shorttasklies[index].electrodes} ampl:${shorttasklies[index].amplit} freq: ${shorttasklies[index].freq} dur: ${shorttasklies[index].dur}';
        shorttaskliebox.putAt(index, shorttasklies[index]);
      }
    }

    update();
  }

  addSuccess(String newsuccess, String id) {
    int index;
    for (int i = 0; i < shorttasklies.length; i++) {
      if (shorttasklies[i].id == id) {
        index = i;

        shorttasklies[index].success = newsuccess;
        shorttaskliebox.putAt(index, shorttasklies[index]);
      }
    }

    update();
  }
}
