import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/10_successhorttaskmove.dart';

class SuccessShortTaskMoveControler extends GetxController {
  late List<SuccesShortTaskMove> _successshorttaskmoves;
  late Box<SuccesShortTaskMove> successshorttaskmovebox;
  List<SuccesShortTaskMove> get successshorttaskmoves => _successshorttaskmoves;

  SuccessShortTaskMoveControler() {
    successshorttaskmovebox =
        Hive.box<SuccesShortTaskMove>('succesShorttaskmoves');
    _successshorttaskmoves = [];
    for (int i = 0; i < successshorttaskmovebox.values.length; i++) {
      _successshorttaskmoves.add(successshorttaskmovebox.getAt(i)!);
    }
  }

  addSuccessShortTaskMove(SuccesShortTaskMove successshorttaskmove) {
    _successshorttaskmoves.add(successshorttaskmove);
    successshorttaskmovebox.add(successshorttaskmove);
    update();
  }
}
