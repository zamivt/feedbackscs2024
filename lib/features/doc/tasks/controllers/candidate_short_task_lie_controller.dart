import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import '../../../../../services/entities/7_candidate_short_task_lie.dart';

class CandidateShortTaskLieControler extends GetxController {
  late List<CandidateShortTaskLie> _candidateshorttasklies;
  late Box<CandidateShortTaskLie> candidateshorttaskliebox;
  List<CandidateShortTaskLie> get candidateshorttasklies =>
      _candidateshorttasklies;

  CandidateShortTaskLieControler() {
    candidateshorttaskliebox =
        Hive.box<CandidateShortTaskLie>('candidateshorttasklies');
    _candidateshorttasklies = [];
    for (int i = 0; i < candidateshorttaskliebox.values.length; i++) {
      _candidateshorttasklies.add(candidateshorttaskliebox.getAt(i)!);
    }
  }

  addCandidateShortTaskLie(CandidateShortTaskLie candidateshorttasklie) {
    _candidateshorttasklies.add(candidateshorttasklie);
    candidateshorttaskliebox.add(candidateshorttasklie);
    update();
  }

  deleteCandidateShortTaskLie(int index) {
    candidateshorttaskliebox.delete(index);
    _candidateshorttasklies.removeAt(index);
    update();
  }
}
