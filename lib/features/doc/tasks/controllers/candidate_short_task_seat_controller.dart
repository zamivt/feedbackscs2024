import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import '../../../../../services/entities/8_candidate_short_task_seat.dart';

class CandidateShortTaskSeatControler extends GetxController {
  late List<CandidateShortTaskSeat> _candidateshorttaskseats;
  late Box<CandidateShortTaskSeat> candidateshorttaskseatbox;
  List<CandidateShortTaskSeat> get candidateshorttaskseats =>
      _candidateshorttaskseats;

  CandidateShortTaskSeatControler() {
    candidateshorttaskseatbox =
        Hive.box<CandidateShortTaskSeat>('candidateshorttaskseats');
    _candidateshorttaskseats = [];
    for (int i = 0; i < candidateshorttaskseatbox.values.length; i++) {
      _candidateshorttaskseats.add(candidateshorttaskseatbox.getAt(i)!);
    }
  }

  addCandidateShortTaskSeat(CandidateShortTaskSeat candidateshorttaskseat) {
    _candidateshorttaskseats.add(candidateshorttaskseat);
    candidateshorttaskseatbox.add(candidateshorttaskseat);
    update();
  }

  deleteCandidateShortTaskSeat(int index) {
    candidateshorttaskseatbox.delete(index);
    _candidateshorttaskseats.removeAt(index);
    update();
  }
}
