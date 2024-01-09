import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/15_unsuccesshorttaskseat.dart';

class UnsuccessShortTaskSeatControler extends GetxController {
  late List<UnSuccesShortTaskSeat> _unsuccessshorttaskseats;
  late Box<UnSuccesShortTaskSeat> unsuccessshorttaskseatbox;
  List<UnSuccesShortTaskSeat> get unsuccessshorttaskseats =>
      _unsuccessshorttaskseats;

  UnsuccessShortTaskSeatControler() {
    unsuccessshorttaskseatbox =
        Hive.box<UnSuccesShortTaskSeat>('unsuccesShorttaskseats');
    _unsuccessshorttaskseats = [];
    for (int i = 0; i < unsuccessshorttaskseatbox.values.length; i++) {
      _unsuccessshorttaskseats.add(unsuccessshorttaskseatbox.getAt(i)!);
    }
  }

  addUnsuccessShortTaskSeat(UnSuccesShortTaskSeat unsuccessshorttaskseat) {
    _unsuccessshorttaskseats.add(unsuccessshorttaskseat);
    unsuccessshorttaskseatbox.add(unsuccessshorttaskseat);
    update();
  }
}
