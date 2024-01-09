import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import '../../../../../services/entities/17_candidate_longtasklie.dart';

class CandidateLongTaskLieControler extends GetxController {
  late List<CandidateLongTaskLie> _candidatelongtasklies;
  late Box<CandidateLongTaskLie> candidatelongtaskliebox;
  List<CandidateLongTaskLie> get candidatelongtasklies =>
      _candidatelongtasklies;

  CandidateLongTaskLieControler() {
    candidatelongtaskliebox =
        Hive.box<CandidateLongTaskLie>('candidatelongtasklies');
    _candidatelongtasklies = [];
    for (int i = 0; i < candidatelongtaskliebox.values.length; i++) {
      _candidatelongtasklies.add(candidatelongtaskliebox.getAt(i)!);
    }
  }

  addCandidateLongTaskLie(CandidateLongTaskLie candidatelongtasklie) {
    _candidatelongtasklies.add(candidatelongtasklie);
    candidatelongtaskliebox.add(candidatelongtasklie);
    update();
  }

  deleteCandidateLongTaskLie(int index) {
    candidatelongtaskliebox.delete(index);
    _candidatelongtasklies.removeAt(index);
    update();
  }
}
