import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/11_successhorttasklie.dart';

class SuccessShortTaskLieControler extends GetxController {
  late List<SuccesShortTaskLie> _successshorttasklies;
  late Box<SuccesShortTaskLie> successshorttaskliebox;
  List<SuccesShortTaskLie> get successshorttasklies => _successshorttasklies;

  SuccessShortTaskLieControler() {
    successshorttaskliebox =
        Hive.box<SuccesShortTaskLie>('succesShorttasklies');
    _successshorttasklies = [];
    for (int i = 0; i < successshorttaskliebox.values.length; i++) {
      _successshorttasklies.add(successshorttaskliebox.getAt(i)!);
    }
  }

  addSuccessShortTaskLie(SuccesShortTaskLie successshorttasklie) {
    _successshorttasklies.add(successshorttasklie);
    successshorttaskliebox.add(successshorttasklie);
    update();
  }
}
