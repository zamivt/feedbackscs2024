import 'package:flutter_riverpod/flutter_riverpod.dart';

final patientEmptyMainscreenControllerProvider =
    StateNotifierProvider<PatientEmptyMainscreenController, int>((ref) {
  return PatientEmptyMainscreenController(0);
});

class PatientEmptyMainscreenController extends StateNotifier<int> {
  PatientEmptyMainscreenController(super.state);
  void setPosition(int value) {
    state = value;
  }
}
