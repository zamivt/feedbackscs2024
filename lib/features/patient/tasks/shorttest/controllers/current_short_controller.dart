import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/9_currentshorttask.dart';
import '../../../../doc/tasks/controllers/short_task_lie_controller.dart';
import '../../../../doc/tasks/controllers/short_task_move_controller.dart';
import '../../../../doc/tasks/controllers/short_task_seat_controller.dart';

class CurrentShortTaskControler extends GetxController {
  late List<CurrentShortTask> _currentshorttasks;
  late Box<CurrentShortTask> currentshorttaskbox;
  List<CurrentShortTask> get currentshorttasks => _currentshorttasks;

  CurrentShortTaskControler() {
    currentshorttaskbox = Hive.box<CurrentShortTask>('currentshorttasks');
    _currentshorttasks = [];
    for (int i = 0; i < currentshorttaskbox.values.length; i++) {
      _currentshorttasks.add(currentshorttaskbox.getAt(i)!);
    }
  }

  addCurrentShortTask(String position, String id) {
    final shortTaskMoveController = Get.find<ShortTaskMoveControler>();
    final listshorttaskmove = shortTaskMoveController.shorttaskmoves.toList();
    final shortTaskSeatController = Get.find<ShortTaskSeatControler>();
    final listshorttaskseat = shortTaskSeatController.shorttaskseats.toList();
    final shortTaskLieController = Get.find<ShortTaskLieControler>();
    final listshorttasklie = shortTaskLieController.shorttasklies.toList();
    if (position == LocaleKeys.cmove.tr()) {
      final currentshorttask = CurrentShortTask(
          position: position,
          program: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.program)
              .toList()
              .first,
          electrodes: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.electrodes)
              .toList()
              .first,
          condition: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.condition)
              .toList()
              .first,
          amplit: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.amplit)
              .toList()
              .first,
          hideamplt: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.hideamplt)
              .toList()
              .first,
          freq: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.freq)
              .toList()
              .first,
          hidefreq: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.hidefreq)
              .toList()
              .first,
          dur: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.dur)
              .toList()
              .first,
          hidedur: listshorttaskmove
              .where((listshorttaskmove) => listshorttaskmove.id.contains(id))
              .map((listshorttaskmove) => listshorttaskmove.hidedur)
              .toList()
              .first,
          id: id);
      _currentshorttasks.add(currentshorttask);
      currentshorttaskbox.add(currentshorttask);
      update();
    } else if (position == LocaleKeys.cseat.tr()) {
      final currentshorttask = CurrentShortTask(
          position: position,
          program: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.program)
              .toList()
              .first,
          electrodes: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.electrodes)
              .toList()
              .first,
          condition: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.condition)
              .toList()
              .first,
          amplit: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.amplit)
              .toList()
              .first,
          hideamplt: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.hideamplt)
              .toList()
              .first,
          freq: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.freq)
              .toList()
              .first,
          hidefreq: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.hidefreq)
              .toList()
              .first,
          dur: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.dur)
              .toList()
              .first,
          hidedur: listshorttaskseat
              .where((listshorttaskseat) => listshorttaskseat.id.contains(id))
              .map((listshorttaskseat) => listshorttaskseat.hidedur)
              .toList()
              .first,
          id: id);
      _currentshorttasks.add(currentshorttask);
      currentshorttaskbox.add(currentshorttask);
      update();
    } else {
      final currentshorttask = CurrentShortTask(
          position: position,
          program: listshorttasklie
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.program)
              .toList()
              .first,
          electrodes: listshorttasklie
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.electrodes)
              .toList()
              .first,
          condition: listshorttasklie
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.condition)
              .toList()
              .first,
          amplit: listshorttasklie
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.amplit)
              .toList()
              .first,
          hideamplt: listshorttasklie
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.hideamplt)
              .toList()
              .first,
          freq: listshorttasklie
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.freq)
              .toList()
              .first,
          hidefreq: listshorttasklie
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.hidefreq)
              .toList()
              .first,
          dur: listshorttasklie
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.dur)
              .toList()
              .first,
          hidedur: listshorttaskseat
              .where((listshorttasklie) => listshorttasklie.id.contains(id))
              .map((listshorttasklie) => listshorttasklie.hidedur)
              .toList()
              .first,
          id: id);
      _currentshorttasks.add(currentshorttask);
      currentshorttaskbox.add(currentshorttask);
      update();
    }
  }

  addStartTestTimeShortTask(DateTime beginTestTime) {
    _currentshorttasks[0].begintesttime = beginTestTime;
    currentshorttaskbox.putAt(0, _currentshorttasks[0]);
    update();
  }

  addStopTestTimeShortTask(DateTime stopTestTime) {
    _currentshorttasks[0].stoptesttime = stopTestTime;
    currentshorttaskbox.putAt(0, _currentshorttasks[0]);
    update();
  }

  addDurationTestTimeShortTask(int durationTest) {
    _currentshorttasks[0].durationtest = durationTest;
    currentshorttaskbox.putAt(0, _currentshorttasks[0]);
    update();
  }

  addConditionAmpTestTimeShortTask(double conditionamp) {
    _currentshorttasks[0].amplit = conditionamp;
    currentshorttaskbox.putAt(0, _currentshorttasks[0]);
    update();
  }

  addDateSt3(
    int painlevel,
    bool isSymptom1,
    bool isSymptom2,
    bool? isSymptom3,
    String sideeffects,
    bool isbigsideeffects,
    bool islongestsuitable,
    String placeparestesia,
  ) {
    _currentshorttasks[0].currentlevelpain = painlevel;
    _currentshorttasks[0].dessymptoms1 = isSymptom1;
    _currentshorttasks[0].dessymptoms2 = isSymptom2;
    _currentshorttasks[0].dessymptoms3 = isSymptom3;
    _currentshorttasks[0].sideeffects = sideeffects;
    _currentshorttasks[0].bigsideeffects = isbigsideeffects;
    _currentshorttasks[0].placeparestesia = placeparestesia;
    _currentshorttasks[0].longestsuitable = islongestsuitable;
    currentshorttaskbox.putAt(0, _currentshorttasks[0]);
    update();
  }

  clearcurrentTaskShort() {
    if (_currentshorttasks.isNotEmpty) {
      _currentshorttasks = [];
      currentshorttaskbox.deleteAt(0);
      update();
    }
  }
}
