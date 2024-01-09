import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import '../../../../../services/entities/6_candidate_short_task_move.dart';

class CandidateShortTaskMoveControler extends GetxController {
  late List<CandidateShortTaskMove> _candidateshorttaskmoves;
  late Box<CandidateShortTaskMove> candidateshorttaskmovebox;
  List<CandidateShortTaskMove> get candidateshorttaskmoves =>
      _candidateshorttaskmoves;

  CandidateShortTaskMoveControler() {
    candidateshorttaskmovebox =
        Hive.box<CandidateShortTaskMove>('candidateshorttaskmoves');
    _candidateshorttaskmoves = [];
    for (int i = 0; i < candidateshorttaskmovebox.values.length; i++) {
      _candidateshorttaskmoves.add(candidateshorttaskmovebox.getAt(i)!);
    }
  }

  addCandidateShortTaskMove(CandidateShortTaskMove candidateshorttaskmove) {
    _candidateshorttaskmoves.add(candidateshorttaskmove);
    candidateshorttaskmovebox.add(candidateshorttaskmove);
    update();
  }

  deleteCandidateShortTaskMove(int index) {
    candidateshorttaskmovebox.delete(index);
    _candidateshorttaskmoves.removeAt(index);
    update();
  }
}
