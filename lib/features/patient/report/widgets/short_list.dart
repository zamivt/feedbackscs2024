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
    final listsuccessshorttaskmove =
        Get.find<SuccessShortTaskMoveControler>().successshorttaskmoves;

    listsuccessshorttaskmove
        .sort((a, b) => a.currentlevelpain.compareTo(b.currentlevelpain));
    final listsuccessshorttaskseat =
        Get.find<SuccessShortTaskSeatControler>().successshorttaskseats;

    listsuccessshorttaskseat
        .sort((a, b) => a.currentlevelpain.compareTo(b.currentlevelpain));
    final listsuccessshorttasklie =
        Get.find<SuccessShortTaskLieControler>().successshorttasklies;

    listsuccessshorttasklie
        .sort((a, b) => a.currentlevelpain.compareTo(b.currentlevelpain));

    return BuildCardShortTask(
        position: position,
        listsuccessshorttaskmove: listsuccessshorttaskmove,
        listsuccessshorttaskseat: listsuccessshorttaskseat,
        listsuccessshorttasklie: listsuccessshorttasklie);
  }
}
