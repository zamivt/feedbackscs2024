import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/13_unsuccesshorttaskmove.dart';

class UnsuccessShortTaskMoveControler extends GetxController {
  late List<UnSuccesShortTaskMove> _unsuccessshorttaskmoves;
  late Box<UnSuccesShortTaskMove> unsuccessshorttaskmovebox;
  List<UnSuccesShortTaskMove> get unsuccessshorttaskmoves =>
      _unsuccessshorttaskmoves;

  UnsuccessShortTaskMoveControler() {
    unsuccessshorttaskmovebox =
        Hive.box<UnSuccesShortTaskMove>('unsuccesShorttaskmoves');
    _unsuccessshorttaskmoves = [];
    for (int i = 0; i < unsuccessshorttaskmovebox.values.length; i++) {
      _unsuccessshorttaskmoves.add(unsuccessshorttaskmovebox.getAt(i)!);
    }
  }

  addUnsuccessShortTaskMove(UnSuccesShortTaskMove unsuccessshorttaskmove) {
    _unsuccessshorttaskmoves.add(unsuccessshorttaskmove);
    unsuccessshorttaskmovebox.add(unsuccessshorttaskmove);
    update();
  }
}
