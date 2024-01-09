import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import '../../../../../services/entities/18_candidate_longtaskseat.dart';

class CandidateLongTaskSeatControler extends GetxController {
  late List<CandidateLongTaskSeat> _candidatelongtaskseats;
  late Box<CandidateLongTaskSeat> candidatelongtaskseatbox;
  List<CandidateLongTaskSeat> get candidatelongtaskseats =>
      _candidatelongtaskseats;

  CandidateLongTaskSeatControler() {
    candidatelongtaskseatbox =
        Hive.box<CandidateLongTaskSeat>('candidatelongtaskseats');
    _candidatelongtaskseats = [];
    for (int i = 0; i < candidatelongtaskseatbox.values.length; i++) {
      _candidatelongtaskseats.add(candidatelongtaskseatbox.getAt(i)!);
    }
  }

  addCandidateLongTaskSeat(CandidateLongTaskSeat candidatelongtaskseat) {
    _candidatelongtaskseats.add(candidatelongtaskseat);
    candidatelongtaskseatbox.add(candidatelongtaskseat);
    update();
  }

  deleteCandidateLongTaskSeat(int index) {
    candidatelongtaskseatbox.delete(index);
    _candidatelongtaskseats.removeAt(index);
    update();
  }
}
