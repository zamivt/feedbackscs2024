import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/22_longtaskseat.dart';

class TaskLongSeatControler extends GetxController {
  late List<LongTaskSeat> _longtaskseats;
  late Box<LongTaskSeat> longtaskseatbox;
  List<LongTaskSeat> get tasklongseats => _longtaskseats;

  TaskLongSeatControler() {
    longtaskseatbox = Hive.box<LongTaskSeat>('longtaskseats');
    _longtaskseats = [];
    for (int i = 0; i < longtaskseatbox.values.length; i++) {
      _longtaskseats.add(longtaskseatbox.getAt(i)!);
    }
  }
  addTaskLongSeat(LongTaskSeat longtaskseat) {
    _longtaskseats.add(longtaskseat);
    longtaskseatbox.add(longtaskseat);
    update();
  }

  deleteTaskLongSeat(LongTaskSeat tasklongseat) {
    int index = _longtaskseats.indexOf(tasklongseat);
    longtaskseatbox.delete(index);
    _longtaskseats.removeWhere((element) => element.id == tasklongseat.id);
    update();
  }
}
