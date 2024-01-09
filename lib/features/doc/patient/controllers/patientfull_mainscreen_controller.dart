import 'package:flutter_riverpod/flutter_riverpod.dart';

final patientfullMainscreenControllerProvider =
    StateNotifierProvider<PatientfullMainscreenController, int>((ref) {
  return PatientfullMainscreenController(0);
});

class PatientfullMainscreenController extends StateNotifier<int> {
  PatientfullMainscreenController(super.state);
  void setPosition(int value) {
    state = value;
  }
}
