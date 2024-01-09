import 'package:flutter_riverpod/flutter_riverpod.dart';

final patientemptyMainscreenControllerProvider =
    StateNotifierProvider<PatientemptyMainscreenController, int>((ref) {
  return PatientemptyMainscreenController(0);
});

class PatientemptyMainscreenController extends StateNotifier<int> {
  PatientemptyMainscreenController(super.state);
  void setPosition(int value) {
    state = value;
  }
}
