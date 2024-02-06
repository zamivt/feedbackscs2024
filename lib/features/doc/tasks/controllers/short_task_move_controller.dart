import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../services/entities/3_short_task_move.dart';

class ShortTaskMoveControler extends GetxController {
  late List<ShortTaskMove> _shorttaskmoves;
  late Box<ShortTaskMove> shorttaskmovebox;
  List<ShortTaskMove> get shorttaskmoves => _shorttaskmoves;

  ShortTaskMoveControler() {
    shorttaskmovebox = Hive.box<ShortTaskMove>('shorttaskmoves');
    _shorttaskmoves = [];
    for (int i = 0; i < shorttaskmovebox.values.length; i++) {
      _shorttaskmoves.add(shorttaskmovebox.getAt(i)!);
    }
  }

  addShortTaskMove(ShortTaskMove shorttaskmove) {
    _shorttaskmoves.add(shorttaskmove);
    shorttaskmovebox.add(shorttaskmove);
    update();
  }

  deleteShortTaskMove(String id) {
    int index;
    for (int i = 0; i < shorttaskmoves.length; i++) {
      if (shorttaskmoves[i].id == id) {
        index = i;
        shorttaskmovebox.delete(index);
        _shorttaskmoves.removeAt(index);
      }
    }

    update();
  }

  addAmpCondition(String id, double condamplit) {
    int index;
    for (int i = 0; i < shorttaskmoves.length; i++) {
      if (shorttaskmoves[i].id == id) {
        index = i;

        shorttaskmoves[index].amplit = condamplit;
        shorttaskmoves[index].fixformula =
            'el:${shorttaskmoves[index].electrodes} ampl:${shorttaskmoves[index].amplit} freq: ${shorttaskmoves[index].freq} dur: ${shorttaskmoves[index].dur}';
        shorttaskmovebox.putAt(index, shorttaskmoves[index]);
      }
    }

    update();
  }

  addSuccess(String newsuccess, String id) {
    int index;
    for (int i = 0; i < shorttaskmoves.length; i++) {
      if (shorttaskmoves[i].id == id) {
        index = i;

        shorttaskmoves[index].success = newsuccess;
        shorttaskmovebox.putAt(index, shorttaskmoves[index]);
      }
    }

    update();
  }
}
