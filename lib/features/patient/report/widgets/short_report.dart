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
  ShortReportWidget({
    required this.position,
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    //move
    final _successShortMoveController =
        Get.find<SuccessShortTaskMoveControler>();
    final _unsuccessShortMoveController =
        Get.find<UnsuccessShortTaskMoveControler>();
    final _shorttaskMoveController = Get.find<ShortTaskMoveControler>();
    //seat
    final _successShortSeatController =
        Get.find<SuccessShortTaskSeatControler>();
    final _unsuccessShortSeatController =
        Get.find<UnsuccessShortTaskSeatControler>();
    final _shorttaskSeatController = Get.find<ShortTaskSeatControler>();
    //lie
    final _successShortLieController = Get.find<SuccessShortTaskLieControler>();
    final _unsuccessShortLieController =
        Get.find<UnsuccessShortTaskLieControler>();
    final _shorttaskLieController = Get.find<ShortTaskLieControler>();

    final _listshortsuccestask = (position == 'move')
        ? _successShortMoveController.successshorttaskmoves
        : (position == 'seat')
            ? _successShortSeatController.successshorttaskseats
            : _successShortLieController.successshorttasklies;

    final _listshortunsuccestask = (position == 'move')
        ? _unsuccessShortMoveController.unsuccessshorttaskmoves
        : (position == 'seat')
            ? _unsuccessShortSeatController.unsuccessshorttaskseats
            : _unsuccessShortLieController.unsuccessshorttasklies;
    final _listshorttask = (position == 'move')
        ? _shorttaskMoveController.shorttaskmoves
        : (position == 'seat')
            ? _shorttaskSeatController.shorttaskseats
            : _shorttaskLieController.shorttasklies;

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
            child: (_listshortsuccestask.length +
                        _listshortunsuccestask.length) !=
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
                                countcontent: _listshorttask.length,
                                nocountcontent: _listshortsuccestask.length +
                                    _listshortunsuccestask.length),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 - 10,
                            child: AppDuoDiagram(
                                content: LocaleKeys.fits.tr(),
                                countcontent: _listshortsuccestask.length +
                                    _listshortunsuccestask.length,
                                nocountcontent: _listshortsuccestask.length),
                          ),
                        ],
                      ),
                    ),
                    ColoredBox(
                      color: Theme.of(context).colorScheme.background,
                      child: Column(children: [
                        _listshorttask.isNotEmpty
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
