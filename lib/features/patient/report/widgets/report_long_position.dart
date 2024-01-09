import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_duo_digram.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_empty_widget.dart';
// import 'package:feedbackscs2024/features/patient/tasks/longtest/controllers/candidate_long_move.dart';
// import 'package:feedbackscs2024/features/patient/tasks/longtest/controllers/candidate_long_seat.dart';
// import 'package:feedbackscs2024/features/patient/tasks/longtest/controllers/task_long_lie.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';
// import 'package:get/instance_manager.dart';

class ReportLongPosition extends StatelessWidget {
  const ReportLongPosition({super.key, required this.position});
  final String position;

  @override
  Widget build(BuildContext context) {
    // final _longtasklieController = Get.find<LongTaskLieControler>();
    // final _longtaskseatController = Get.find<CandidateLongTaskSeatControler>();
    // final _longtaskmoveController = Get.find<CandidateLongTaskMoveControler>();

    return Column(
      children: [LongReportHeader(position: position), Row()],
    );
  }
}

class LongReportHeader extends StatelessWidget {
  const LongReportHeader({
    super.key,
    required this.position,
  });

  final String position;

  @override
  Widget build(BuildContext context) {
    int lengtmove = 2;
    int lengthseat = 0;
    int lengtlie = 3;
    int length = (position == 'move')
        ? lengtmove
        : (position == 'seat')
            ? lengthseat
            : lengtlie;
    int lengtdonemove = 2;
    int lengthdoneseat = 0;
    int lengtdonelie = 1;
    int lengthdone = (position == 'move')
        ? lengtdonemove
        : (position == 'seat')
            ? lengthdoneseat
            : lengtdonelie;
    int lengtsuccessdonemove = 1;
    int lengthsuccesdoneseat = 0;
    int lengtsuccessdonelie = 0;
    int lengthsuccessdone = (position == 'move')
        ? lengtsuccessdonemove
        : (position == 'seat')
            ? lengthsuccesdoneseat
            : lengtsuccessdonelie;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5),
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              (position == 'move')
                  ? LocaleKeys.cmove.tr()
                  : (position == 'seat')
                      ? LocaleKeys.cseat.tr()
                      : LocaleKeys.clie.tr(),
              style: Theme.of(context).textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
          ),
          (length == 0)
              ? AppEmptyWidget()
              : Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          child: AppDuoDiagram(
                              content: LocaleKeys.done.tr(),
                              countcontent: length,
                              nocountcontent: lengthdone),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          child: AppDuoDiagram(
                              content: LocaleKeys.done.tr(),
                              countcontent: lengthdone,
                              nocountcontent: lengthsuccessdone),
                        )
                      ],
                    )
                  ],
                )
        ],
      ),
    );
  }
}
