import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/12_successhorttaskseat.dart';

class SuccessShortTaskSeatControler extends GetxController {
  late List<SuccesShortTaskSeat> _successshorttaskseats;
  late Box<SuccesShortTaskSeat> successshorttaskseatbox;
  List<SuccesShortTaskSeat> get successshorttaskseats => _successshorttaskseats;

  SuccessShortTaskSeatControler() {
    successshorttaskseatbox =
        Hive.box<SuccesShortTaskSeat>('succesShorttaskseats');
    _successshorttaskseats = [];
    for (int i = 0; i < successshorttaskseatbox.values.length; i++) {
      _successshorttaskseats.add(successshorttaskseatbox.getAt(i)!);
    }
  }

  addSuccessShortTaskSeat(SuccesShortTaskSeat successshorttaskseat) {
    _successshorttaskseats.add(successshorttaskseat);
    successshorttaskseatbox.add(successshorttaskseat);
    update();
  }
}
