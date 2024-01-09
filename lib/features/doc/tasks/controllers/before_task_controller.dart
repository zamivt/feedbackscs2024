import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../services/entities/2_beforetask.dart';

class BeforeTaskController extends GetxController {
  late List<BeforeTask> _beforetasks;
  late Box<BeforeTask> beforetaskbox;
  List<BeforeTask> get beforetasks => _beforetasks;
  BeforeTaskController() {
    beforetaskbox = Hive.box<BeforeTask>('beforetasks');
    _beforetasks = [];
    for (int i = 0; i < beforetaskbox.values.length; i++) {
      _beforetasks.add(beforetaskbox.getAt(i)!);
    }
  }

  addBeforeTasks(BeforeTask beforetask) {
    _beforetasks.add(beforetask);
    beforetaskbox.add(beforetask);
    update();
  }

  editbeforeprogran(String newbeforeprogram) {
    _beforetasks[0].beforeprogram = newbeforeprogram;
    beforetaskbox.putAt(0, _beforetasks[0]);
    update();
  }

  editbefoream(double newbefoream) {
    _beforetasks[0].beforeamp = newbefoream;
    beforetaskbox.putAt(0, _beforetasks[0]);
    update();
  }

  editbeforelectrodemove(String newbeforelectrode) {
    _beforetasks[0].beforelectrode = newbeforelectrode;
    beforetaskbox.putAt(0, _beforetasks[0]);
    update();
  }

  editbeforefreq(int newbeforefreq) {
    _beforetasks[0].beforefreq = newbeforefreq;
    beforetaskbox.putAt(0, _beforetasks[0]);
    update();
  }

  editbeforedur(int newbeforedur) {
    _beforetasks[0].beforedur = newbeforedur;
    beforetaskbox.putAt(0, _beforetasks[0]);
    update();
  }

  editbeforeprim(String newbeforeprim) {
    _beforetasks[0].beforeprim = newbeforeprim;
    beforetaskbox.putAt(0, _beforetasks[0]);
    update();
  }
}
