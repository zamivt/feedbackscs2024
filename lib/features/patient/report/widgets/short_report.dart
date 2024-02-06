import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../../../../core/ui/widgets/app_empty_widget.dart';
import '../../../doc/tasks/controllers/short_task_lie_controller.dart';
import '../../../doc/tasks/controllers/short_task_move_controller.dart';
import '../../../doc/tasks/controllers/short_task_seat_controller.dart';
import '../../tasks/shorttest/controllers/success_short_lie_controller.dart';
import '../../tasks/shorttest/controllers/success_short_move_controller.dart';
import '../../tasks/shorttest/controllers/success_short_seat_controller.dart';
import '../../tasks/shorttest/controllers/unsuccess_short_lie_controller.dart';
import '../../tasks/shorttest/controllers/unsuccess_short_move_controller.dart';
import '../../tasks/shorttest/controllers/unsuccess_short_seat_controller.dart';
import 'short_list.dart';

// ignore: must_be_immutable
class ShortReportWidget extends StatelessWidget {
  String position;
  // ignore: use_key_in_widget_constructors
  ShortReportWidget({
    required this.position,
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    //move
    final successShortMoveController =
        Get.find<SuccessShortTaskMoveControler>();
    final unsuccessShortMoveController =
        Get.find<UnsuccessShortTaskMoveControler>();
    final shorttaskMoveController = Get.find<ShortTaskMoveControler>();
    //seat
    final successShortSeatController =
        Get.find<SuccessShortTaskSeatControler>();
    final unsuccessShortSeatController =
        Get.find<UnsuccessShortTaskSeatControler>();
    final shorttaskSeatController = Get.find<ShortTaskSeatControler>();
    //lie
    final successShortLieController = Get.find<SuccessShortTaskLieControler>();
    final unsuccessShortLieController =
        Get.find<UnsuccessShortTaskLieControler>();
    final shorttaskLieController = Get.find<ShortTaskLieControler>();

    final listshortsuccestask = (position == 'move')
        ? successShortMoveController.successshorttaskmoves
        : (position == 'seat')
            ? successShortSeatController.successshorttaskseats
            : successShortLieController.successshorttasklies;

    final listshortunsuccestask = (position == 'move')
        ? unsuccessShortMoveController.unsuccessshorttaskmoves
        : (position == 'seat')
            ? unsuccessShortSeatController.unsuccessshorttaskseats
            : unsuccessShortLieController.unsuccessshorttasklies;
    final listshorttask = (position == 'move')
        ? shorttaskMoveController.shorttaskmoves
        : (position == 'seat')
            ? shorttaskSeatController.shorttaskseats
            : shorttaskLieController.shorttasklies;

    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              border: Border.all(color: Theme.of(context).colorScheme.primary)),
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            (position == 'move')
                ? LocaleKeys.cmove.tr()
                : (position == 'seat')
                    ? LocaleKeys.cseat.tr()
                    : LocaleKeys.clie.tr(),
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.background,
            child: (listshortsuccestask.length +
                        listshortunsuccestask.length) !=
                    0
                ? Column(children: [
                    ColoredBox(
                      color: Theme.of(context).colorScheme.tertiary,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 10,
                            child: AppDuoDiagram(
                                content: LocaleKeys.done.tr(),
                                countcontent: listshorttask.length,
                                nocountcontent: listshortsuccestask.length +
                                    listshortunsuccestask.length),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 10,
                            child: AppDuoDiagram(
                                content: LocaleKeys.fits.tr(),
                                countcontent: listshortsuccestask.length +
                                    listshortunsuccestask.length,
                                nocountcontent: listshortsuccestask.length),
                          ),
                        ],
                      ),
                    ),
                    ColoredBox(
                      color: Theme.of(context).colorScheme.background,
                      child: Column(children: [
                        listshorttask.isNotEmpty
                            ? ShortList(
                                position: position,
                              )
                            : Container(),
                      ]),
                    )
                  ])
                : AppEmptyWidget()),
      ],
    );
  }
}
