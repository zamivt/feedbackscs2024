import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/20_longtaskmove.dart';

class TaskLongMoveControler extends GetxController {
  late List<LongTaskMove> _longtaskmoves;
  late Box<LongTaskMove> longtaskmovebox;
  List<LongTaskMove> get tasklongmoves => _longtaskmoves;

  TaskLongMoveControler() {
    longtaskmovebox = Hive.box<LongTaskMove>('longtaskmoves');
    _longtaskmoves = [];
    for (int i = 0; i < longtaskmovebox.values.length; i++) {
      _longtaskmoves.add(longtaskmovebox.getAt(i)!);
    }
  }
  addTaskLongMove(LongTaskMove tasklongmove) {
    _longtaskmoves.add(tasklongmove);
    longtaskmovebox.add(tasklongmove);
    update();
  }

  deleteTaskLongMove(LongTaskMove longtaskmove) {
    int index = _longtaskmoves.indexOf(longtaskmove);
    longtaskmovebox.delete(index);
    _longtaskmoves.removeWhere((element) => element.id == longtaskmove.id);
    update();
  }
}
