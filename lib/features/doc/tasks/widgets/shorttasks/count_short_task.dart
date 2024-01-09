import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/short_task_lie_controller.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/short_task_move_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../../../../../core/router/route_names.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../controllers/short_task_seat_controller.dart';

class CountShortTasks extends StatelessWidget {
  const CountShortTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _shortTaskMove = Get.find<ShortTaskMoveControler>();
    final _shortTaskLie = Get.find<ShortTaskLieControler>();
    final _shortTaskSeat = Get.find<ShortTaskSeatControler>();
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          child: Text(LocaleKeys.tasks.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppTextButton(
                    text: LocaleKeys.cmove.tr() +
                        '\n' +
                        _shortTaskMove.shorttaskmoves.length.toString(),
                    linkbutton: RouteNames.docshorttaskmove),
              ),
              Expanded(
                child: AppTextButton(
                    text: LocaleKeys.cseat.tr() +
                        '\n' +
                        _shortTaskSeat.shorttaskseats.length.toString(),
                    linkbutton: RouteNames.docshorttaskseat),
              ),
              Expanded(
                child: AppTextButton(
                    text: LocaleKeys.clie.tr() +
                        '\n' +
                        _shortTaskLie.shorttasklies.length.toString(),
                    linkbutton: RouteNames.docshorttasklie),
              )
            ],
          ),
        ),
      ],
    );
  }
}
