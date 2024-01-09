import 'package:flutter_riverpod/flutter_riverpod.dart';

final docMainscreenControllerProvider =
    StateNotifierProvider<DocMainscreenController, int>((ref) {
  return DocMainscreenController(0);
});

class DocMainscreenController extends StateNotifier<int> {
  DocMainscreenController(super.state);
  void setPosition(int value) {
    state = value;
  }
}
