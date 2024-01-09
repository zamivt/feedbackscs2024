import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import '../../tasks/shorttest/controllers/success_short_lie_controller.dart';
import '../../tasks/shorttest/controllers/success_short_move_controller.dart';
import '../../tasks/shorttest/controllers/success_short_seat_controller.dart';
import 'buildcard_shorttask.dart';

// ignore: must_be_immutable
class ShortList extends StatelessWidget {
  String position;
  ShortList({
    required this.position,
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    final _listsuccessshorttaskmove =
        Get.find<SuccessShortTaskMoveControler>().successshorttaskmoves;

    _listsuccessshorttaskmove
        .sort((a, b) => a.currentlevelpain.compareTo(b.currentlevelpain));
    final _listsuccessshorttaskseat =
        Get.find<SuccessShortTaskSeatControler>().successshorttaskseats;

    _listsuccessshorttaskseat
        .sort((a, b) => a.currentlevelpain.compareTo(b.currentlevelpain));
    final _listsuccessshorttasklie =
        Get.find<SuccessShortTaskLieControler>().successshorttasklies;

    _listsuccessshorttasklie
        .sort((a, b) => a.currentlevelpain.compareTo(b.currentlevelpain));

    return BuildCardShortTask(
        position: position,
        listsuccessshorttaskmove: _listsuccessshorttaskmove,
        listsuccessshorttaskseat: _listsuccessshorttaskseat,
        listsuccessshorttasklie: _listsuccessshorttasklie);
  }
}
