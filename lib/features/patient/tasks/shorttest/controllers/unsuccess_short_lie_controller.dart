import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/14_unsuccesshorttasklie.dart';

class UnsuccessShortTaskLieControler extends GetxController {
  late List<UnSuccesShortTaskLie> _unsuccessshorttasklies;
  late Box<UnSuccesShortTaskLie> unsuccessshorttaskliebox;
  List<UnSuccesShortTaskLie> get unsuccessshorttasklies =>
      _unsuccessshorttasklies;

  UnsuccessShortTaskLieControler() {
    unsuccessshorttaskliebox =
        Hive.box<UnSuccesShortTaskLie>('unsuccesShorttasklies');
    _unsuccessshorttasklies = [];
    for (int i = 0; i < unsuccessshorttaskliebox.values.length; i++) {
      _unsuccessshorttasklies.add(unsuccessshorttaskliebox.getAt(i)!);
    }
  }

  addUnsuccessShortTaskLie(UnSuccesShortTaskLie unsuccessshorttasklie) {
    _unsuccessshorttasklies.add(unsuccessshorttasklie);
    unsuccessshorttaskliebox.add(unsuccessshorttasklie);
    update();
  }
}
