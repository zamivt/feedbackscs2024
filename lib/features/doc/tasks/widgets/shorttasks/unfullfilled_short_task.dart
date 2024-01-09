import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/candidate_short_task_lie_controller.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/candidate_short_task_move_controller.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/candidate_short_task_seat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';

class Unfulfilledshorttasks extends StatelessWidget {
  const Unfulfilledshorttasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _candidateshortTaskMove = Get.find<CandidateShortTaskMoveControler>();
    final _candidateshortTaskLie = Get.find<CandidateShortTaskLieControler>();
    final _candidateshortTaskSeat = Get.find<CandidateShortTaskSeatControler>();
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
          child: Text(LocaleKeys.unfulfilledtasks.tr(),
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
                        _candidateshortTaskMove.candidateshorttaskmoves.length
                            .toString(),
                    linkbutton: RouteNames.doccandidateshorttaskmove),
              ),
              Expanded(
                child: AppTextButton(
                    text: LocaleKeys.cseat.tr() +
                        '\n' +
                        _candidateshortTaskSeat.candidateshorttaskseats.length
                            .toString(),
                    linkbutton: RouteNames.doccandidateshorttaskseat),
              ),
              Expanded(
                child: AppTextButton(
                    text: LocaleKeys.clie.tr() +
                        '\n' +
                        _candidateshortTaskLie.candidateshorttasklies.length
                            .toString(),
                    linkbutton: RouteNames.doccandidateshorttasklie),
              )
            ],
          ),
        ),
      ],
    );
  }
}
