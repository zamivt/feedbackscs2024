import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import '../../../../../services/entities/16_candidate_long_taskmove.dart';

class CandidateLongTaskMoveControler extends GetxController {
  late List<CandidateLongTaskMove> _candidatelongtaskmoves;
  late Box<CandidateLongTaskMove> candidatelongtaskmovebox;
  List<CandidateLongTaskMove> get candidatelongtaskmoves =>
      _candidatelongtaskmoves;

  CandidateLongTaskMoveControler() {
    candidatelongtaskmovebox =
        Hive.box<CandidateLongTaskMove>('candidatelongtaskmoves');
    _candidatelongtaskmoves = [];
    for (int i = 0; i < candidatelongtaskmovebox.values.length; i++) {
      _candidatelongtaskmoves.add(candidatelongtaskmovebox.getAt(i)!);
    }
  }

  addCandidateLongTaskMove(CandidateLongTaskMove candidatelongtaskmove) {
    _candidatelongtaskmoves.add(candidatelongtaskmove);
    candidatelongtaskmovebox.add(candidatelongtaskmove);
    update();
  }

  deleteCandidateLongTaskMove(int index) {
    candidatelongtaskmovebox.delete(index);
    _candidatelongtaskmoves.removeAt(index);
    update();
  }
}
