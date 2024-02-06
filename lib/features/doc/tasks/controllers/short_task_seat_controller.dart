import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../services/entities/5_shorttaskseat.dart';

class ShortTaskSeatControler extends GetxController {
  late List<ShortTaskSeat> _shorttaskseats;
  late Box<ShortTaskSeat> shorttaskseatbox;
  List<ShortTaskSeat> get shorttaskseats => _shorttaskseats;

  ShortTaskSeatControler() {
    shorttaskseatbox = Hive.box<ShortTaskSeat>('shorttaskseats');
    _shorttaskseats = [];
    for (int i = 0; i < shorttaskseatbox.values.length; i++) {
      _shorttaskseats.add(shorttaskseatbox.getAt(i)!);
    }
  }

  addShortTaskSeat(ShortTaskSeat shorttaskseat) {
    _shorttaskseats.add(shorttaskseat);
    shorttaskseatbox.add(shorttaskseat);
    update();
  }

  deleteShortTaskSeat(String id) {
    int index;
    for (int i = 0; i < shorttaskseats.length; i++) {
      if (shorttaskseats[i].id == id) {
        index = i;
        shorttaskseatbox.delete(index);
        _shorttaskseats.removeAt(index);
      }
    }

    update();
  }

  addAmpCondition(String id, double condamplit) {
    int index;
    for (int i = 0; i < shorttaskseats.length; i++) {
      if (shorttaskseats[i].id == id) {
        index = i;

        shorttaskseats[index].amplit = condamplit;
        shorttaskseats[index].fixformula =
            'el:${shorttaskseats[index].electrodes} ampl:${shorttaskseats[index].amplit} freq: ${shorttaskseats[index].freq} dur: ${shorttaskseats[index].dur}';
        shorttaskseatbox.putAt(index, shorttaskseats[index]);
      }
    }

    update();
  }

  addSuccess(String newsuccess, String id) {
    int index;
    for (int i = 0; i < shorttaskseats.length; i++) {
      if (shorttaskseats[i].id == id) {
        index = i;

        shorttaskseats[index].success = newsuccess;
        shorttaskseatbox.putAt(index, shorttaskseats[index]);
      }
    }

    update();
  }
}
