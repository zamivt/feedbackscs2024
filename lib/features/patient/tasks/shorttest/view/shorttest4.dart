// ignore_for_file: unrelated_type_equality_checks, prefer_interpolation_to_compose_strings

import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/short_task_move_controller.dart';
import 'package:feedbackscs2024/features/patient/tasks/longtest/controllers/candidate_long_move.dart';
import 'package:feedbackscs2024/services/entities/12_successhorttaskseat.dart';
import 'package:feedbackscs2024/services/entities/16_candidate_long_taskmove.dart';
import 'package:feedbackscs2024/services/entities/17_candidate_longtasklie.dart';
import 'package:feedbackscs2024/services/entities/18_candidate_longtaskseat.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../collections/patient.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../../services/entities/13_unsuccesshorttaskmove.dart';
import '../../../../../../services/entities/10_successhorttaskmove.dart';

import '../../../../../core/router/route_names.dart';
import '../../../../../repository/feedbackscs_database.dart';
import '../../../../../services/entities/11_successhorttasklie.dart';
import '../../../../../services/entities/14_unsuccesshorttasklie.dart';
import '../../../../../services/entities/15_unsuccesshorttaskseat.dart';
import '../../../../../services/entities/data/test_const.dart';
import '../../../../doc/tasks/controllers/short_task_lie_controller.dart';
import '../../../../doc/tasks/controllers/short_task_seat_controller.dart';
import '../../longtest/controllers/candidate_long_lie.dart';
import '../../longtest/controllers/candidate_long_seat.dart';
import '../controllers/current_short_controller.dart';
import '../controllers/success_short_lie_controller.dart';
import '../controllers/success_short_move_controller.dart';
import '../controllers/success_short_seat_controller.dart';
import '../controllers/unsuccess_short_lie_controller.dart';
import '../controllers/unsuccess_short_move_controller.dart';
import '../controllers/unsuccess_short_seat_controller.dart';

class ShortTest4 extends StatelessWidget {
  const ShortTest4({super.key});

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();

    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

    final shorttaskmoveController = Get.find<ShortTaskMoveControler>();
    final successShortMoveController =
        Get.find<SuccessShortTaskMoveControler>();
    final unsuccessShortMoveController =
        Get.find<UnsuccessShortTaskMoveControler>();

    final shorttaskseatController = Get.find<ShortTaskSeatControler>();
    final successShortSeatController =
        Get.find<SuccessShortTaskSeatControler>();
    final unsuccessShortSeatController =
        Get.find<UnsuccessShortTaskSeatControler>();

    final shorttasklieController = Get.find<ShortTaskLieControler>();
    final successShortLieController = Get.find<SuccessShortTaskLieControler>();
    final unsuccessShortLieController =
        Get.find<UnsuccessShortTaskLieControler>();

    final candidatelongtaskMoveController =
        Get.find<CandidateLongTaskMoveControler>();
    final candidatelongtaskSeatController =
        Get.find<CandidateLongTaskSeatControler>();
    final candidatelongtaskLieController =
        Get.find<CandidateLongTaskLieControler>();

    return GetBuilder(
        builder: (CurrentShortTaskControler currentShortTaskControler) {
      final bool issuccess =
          ((currentShortTaskControler.currentshorttasks[0].durationtest ?? 0) >=
                  TimeTestConst.timeshorttest) &&
              (currentShortTaskControler.currentshorttasks[0].longestsuitable ==
                  true) &&
              ((currentpatient[0].priorityshorttest == 'final desion'.tr) ||
                  (currentpatient[0].priorityshorttest != 'final desion'.tr) &&
                      (currentShortTaskControler
                              .currentshorttasks[0].currentlevelpain! <=
                          currentpatient[0].prioritylevelpain));
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            title: Text(
              currentShortTaskControler.currentshorttasks[0].position +
                  ": " +
                  LocaleKeys.program.tr() +
                  ' - ' +
                  currentShortTaskControler.currentshorttasks[0].program,
              style: Theme.of(context).textTheme.titleLarge,
            )),
        body: SingleChildScrollView(
          child: Column(children: [
            AppHeader(header: LocaleKeys.taskcompleted.tr()),
            AppSubHeader(
                widget: Text(
              LocaleKeys.taskresult.tr(),
              style: Theme.of(context).textTheme.titleSmall,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  AppRow(
                      headerrow: LocaleKeys.timetest.tr(),
                      bodyrow:
                          '${currentShortTaskControler.currentshorttasks[0].durationtest} ${LocaleKeys.min.tr()}'),
                  AppResult(
                      text: ((currentShortTaskControler
                                      .currentshorttasks[0].durationtest ??
                                  0) >=
                              TimeTestConst.timeshorttest
                          ? LocaleKeys.fulltest.tr()
                          : LocaleKeys.interrupttest.tr()),
                      isSucces: ((currentShortTaskControler
                                  .currentshorttasks[0].durationtest ??
                              0) <
                          TimeTestConst.timeshorttest)),
                  const AppDivider(),
                  AppRow(
                      headerrow: LocaleKeys.program.tr(),
                      bodyrow: currentShortTaskControler
                          .currentshorttasks[0].program),
                  AppRow(
                      headerrow: LocaleKeys.electrodes.tr(),
                      bodyrow: currentShortTaskControler
                          .currentshorttasks[0].electrodes),
                  AppRow(
                      headerrow: LocaleKeys.amp.tr(),
                      bodyrow: currentShortTaskControler
                          .currentshorttasks[0].amplit
                          .toString()),
                  AppRow(
                      headerrow: LocaleKeys.freq.tr(),
                      bodyrow: currentShortTaskControler
                          .currentshorttasks[0].freq
                          .toString()),
                  AppRow(
                      headerrow: LocaleKeys.dur.tr(),
                      bodyrow: currentShortTaskControler
                          .currentshorttasks[0].dur
                          .toString()),
                  AppRow(
                      headerrow: LocaleKeys.painlevel.tr(),
                      bodyrow: currentShortTaskControler
                          .currentshorttasks[0].currentlevelpain
                          .toString()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        currentShortTaskControler
                                    .currentshorttasks[0].currentlevelpain! >
                                currentpatient[0].prioritylevelpain
                            ? LocaleKeys.higherthandesired.tr()
                            : LocaleKeys.belowthedesired.tr(),
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                  const AppDivider(),
                  AppResult(
                      text: issuccess
                          // ignore: dead_code
                          ? LocaleKeys.progcandidatlongtest.tr()
                          : LocaleKeys.prognoncandidatlongtest.tr(),
                      isSucces: issuccess),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        add_suc_and_candid(
                            issuccess,
                            currentShortTaskControler,
                            candidatelongtaskMoveController,
                            shorttaskmoveController,
                            successShortMoveController,
                            unsuccessShortMoveController,
                            candidatelongtaskSeatController,
                            shorttaskseatController,
                            successShortSeatController,
                            unsuccessShortSeatController,
                            candidatelongtaskLieController,
                            shorttasklieController,
                            successShortLieController,
                            unsuccessShortLieController);
                        context
                            .read<FeedbackSCSDatabase>()
                            .updateActiveTask('no tasks');

                        context.pushNamed(RouteNames.patienttasks);
                      },
                      child: Text(LocaleKeys.continuetesting.tr(),
                          style: Theme.of(context).textTheme.labelLarge))
                ],
              ),
            )
          ]),
        ),
      );
    });
  }

  void add_suc_and_candid(
      bool issuccess,
      CurrentShortTaskControler currentShortTaskControler,
      CandidateLongTaskMoveControler candidatelongtaskMoveController,
      ShortTaskMoveControler shorttaskmoveController,
      SuccessShortTaskMoveControler successShortMoveController,
      UnsuccessShortTaskMoveControler unsuccessShortMoveController,
      CandidateLongTaskSeatControler candidatelongtaskSeatController,
      ShortTaskSeatControler shorttaskseatController,
      SuccessShortTaskSeatControler successShortSeatController,
      UnsuccessShortTaskSeatControler unsuccessShortSeatController,
      CandidateLongTaskLieControler candidatelongtaskLieController,
      ShortTaskLieControler shorttasklieController,
      SuccessShortTaskLieControler successShortLieController,
      UnsuccessShortTaskLieControler unsuccessShortLieController) {
    issuccess &&
            currentShortTaskControler.currentshorttasks[0].position ==
                LocaleKeys.cmove.tr()
        ? {
            candidatelongtaskMoveController.addCandidateLongTaskMove(
                CandidateLongTaskMove(
                    id: currentShortTaskControler.currentshorttasks[0].id)),
            shorttaskmoveController.addSuccess(
                "success", currentShortTaskControler.currentshorttasks[0].id),
            successShortMoveController.addSuccessShortTaskMove(
                SuccesShortTaskMove(
                    id: currentShortTaskControler.currentshorttasks[0].id,
                    program:
                        currentShortTaskControler.currentshorttasks[0].program,
                    electrodes: currentShortTaskControler
                        .currentshorttasks[0].electrodes,
                    amplit:
                        currentShortTaskControler.currentshorttasks[0].amplit!,
                    hideampl: currentShortTaskControler
                        .currentshorttasks[0].hideamplt,
                    freq: currentShortTaskControler.currentshorttasks[0].freq,
                    hidefreq:
                        currentShortTaskControler.currentshorttasks[0].hidefreq,
                    dur: currentShortTaskControler.currentshorttasks[0].dur,
                    hidedur:
                        currentShortTaskControler.currentshorttasks[0].hidedur,
                    begintesttime: currentShortTaskControler
                        .currentshorttasks[0].begintesttime!,
                    stoptesttime: currentShortTaskControler
                        .currentshorttasks[0].stoptesttime!,
                    durationtest: currentShortTaskControler
                        .currentshorttasks[0].durationtest!,
                    currentlevelpain: currentShortTaskControler
                        .currentshorttasks[0].currentlevelpain!,
                    dessymptoms1: currentShortTaskControler
                        .currentshorttasks[0].dessymptoms1!,
                    dessymptoms2: currentShortTaskControler
                        .currentshorttasks[0].dessymptoms2!,
                    dessymptoms3: currentShortTaskControler
                            .currentshorttasks[0].dessymptoms3 ??
                        true,
                    bigsideeffects: currentShortTaskControler
                        .currentshorttasks[0].bigsideeffects!,
                    sideeffects: currentShortTaskControler
                        .currentshorttasks[0].sideeffects!,
                    placeparestesia: currentShortTaskControler
                        .currentshorttasks[0].placeparestesia!,
                    longestsuitable: currentShortTaskControler
                        .currentshorttasks[0].longestsuitable!))
          }
        : !issuccess &&
                currentShortTaskControler.currentshorttasks[0].position ==
                    LocaleKeys.cmove.tr()
            ? {
                shorttaskmoveController.addSuccess("unsuccess",
                    currentShortTaskControler.currentshorttasks[0].id),
                unsuccessShortMoveController.addUnsuccessShortTaskMove(
                    UnSuccesShortTaskMove(
                        id: currentShortTaskControler.currentshorttasks[0].id,
                        program: currentShortTaskControler
                            .currentshorttasks[0].program,
                        electrodes: currentShortTaskControler
                            .currentshorttasks[0].electrodes,
                        amplit: currentShortTaskControler
                            .currentshorttasks[0].amplit!,
                        hideampl: currentShortTaskControler
                            .currentshorttasks[0].hideamplt,
                        freq:
                            currentShortTaskControler.currentshorttasks[0].freq,
                        hidefreq: currentShortTaskControler
                            .currentshorttasks[0].hidefreq,
                        dur: currentShortTaskControler.currentshorttasks[0].dur,
                        hidedur: currentShortTaskControler
                            .currentshorttasks[0].hidedur,
                        begintesttime: currentShortTaskControler
                            .currentshorttasks[0].begintesttime!,
                        stoptesttime: currentShortTaskControler
                            .currentshorttasks[0].stoptesttime!,
                        durationtest: currentShortTaskControler
                            .currentshorttasks[0].durationtest!,
                        currentlevelpain: currentShortTaskControler
                            .currentshorttasks[0].currentlevelpain!,
                        dessymptoms1: currentShortTaskControler
                            .currentshorttasks[0].dessymptoms1!,
                        dessymptoms2: currentShortTaskControler
                            .currentshorttasks[0].dessymptoms2!,
                        dessymptoms3: currentShortTaskControler
                                .currentshorttasks[0].dessymptoms3 ??
                            true,
                        bigsideeffects: currentShortTaskControler
                            .currentshorttasks[0].bigsideeffects!,
                        sideeffects: currentShortTaskControler
                            .currentshorttasks[0].sideeffects!,
                        placeparestesia: currentShortTaskControler
                            .currentshorttasks[0].placeparestesia!,
                        longestsuitable: currentShortTaskControler
                            .currentshorttasks[0].longestsuitable!))
              }
            : issuccess &&
                    currentShortTaskControler.currentshorttasks[0].position ==
                        LocaleKeys.cseat.tr()
                ? {
                    candidatelongtaskSeatController.addCandidateLongTaskSeat(
                        CandidateLongTaskSeat(
                            id: currentShortTaskControler
                                .currentshorttasks[0].id)),
                    shorttaskseatController.addSuccess("success",
                        currentShortTaskControler.currentshorttasks[0].id),
                    successShortSeatController.addSuccessShortTaskSeat(
                        SuccesShortTaskSeat(
                            id: currentShortTaskControler
                                .currentshorttasks[0].id,
                            program: currentShortTaskControler
                                .currentshorttasks[0].program,
                            electrodes: currentShortTaskControler
                                .currentshorttasks[0].electrodes,
                            amplit: currentShortTaskControler
                                .currentshorttasks[0].amplit!,
                            hideampl: currentShortTaskControler
                                .currentshorttasks[0].hideamplt,
                            freq: currentShortTaskControler
                                .currentshorttasks[0].freq,
                            hidefreq: currentShortTaskControler
                                .currentshorttasks[0].hidefreq,
                            dur: currentShortTaskControler
                                .currentshorttasks[0].dur,
                            hidedur: currentShortTaskControler
                                .currentshorttasks[0].hidedur,
                            begintesttime: currentShortTaskControler
                                .currentshorttasks[0].begintesttime!,
                            stoptesttime: currentShortTaskControler
                                .currentshorttasks[0].stoptesttime!,
                            durationtest: currentShortTaskControler
                                .currentshorttasks[0].durationtest!,
                            currentlevelpain: currentShortTaskControler
                                .currentshorttasks[0].currentlevelpain!,
                            dessymptoms1: currentShortTaskControler
                                .currentshorttasks[0].dessymptoms1!,
                            dessymptoms2: currentShortTaskControler
                                .currentshorttasks[0].dessymptoms2!,
                            dessymptoms3: currentShortTaskControler
                                    .currentshorttasks[0].dessymptoms3 ??
                                true,
                            bigsideeffects: currentShortTaskControler
                                .currentshorttasks[0].bigsideeffects!,
                            sideeffects: currentShortTaskControler
                                .currentshorttasks[0].sideeffects!,
                            placeparestesia: currentShortTaskControler
                                .currentshorttasks[0].placeparestesia!,
                            longestsuitable: currentShortTaskControler
                                .currentshorttasks[0].longestsuitable!))
                  }
                : !issuccess &&
                        currentShortTaskControler
                                .currentshorttasks[0].position ==
                            LocaleKeys.cseat.tr()
                    ? {
                        shorttaskseatController.addSuccess("unsuccess",
                            currentShortTaskControler.currentshorttasks[0].id),
                        unsuccessShortSeatController.addUnsuccessShortTaskSeat(
                            UnSuccesShortTaskSeat(
                                id: currentShortTaskControler
                                    .currentshorttasks[0].id,
                                program: currentShortTaskControler
                                    .currentshorttasks[0].program,
                                electrodes: currentShortTaskControler
                                    .currentshorttasks[0].electrodes,
                                amplit: currentShortTaskControler
                                    .currentshorttasks[0].amplit!,
                                hideampl: currentShortTaskControler
                                    .currentshorttasks[0].hideamplt,
                                freq: currentShortTaskControler
                                    .currentshorttasks[0].freq,
                                hidefreq: currentShortTaskControler
                                    .currentshorttasks[0].hidefreq,
                                dur: currentShortTaskControler
                                    .currentshorttasks[0].dur,
                                hidedur: currentShortTaskControler
                                    .currentshorttasks[0].hidedur,
                                begintesttime: currentShortTaskControler
                                    .currentshorttasks[0].begintesttime!,
                                stoptesttime: currentShortTaskControler
                                    .currentshorttasks[0].stoptesttime!,
                                durationtest: currentShortTaskControler
                                    .currentshorttasks[0].durationtest!,
                                currentlevelpain: currentShortTaskControler
                                    .currentshorttasks[0].currentlevelpain!,
                                dessymptoms1: currentShortTaskControler
                                    .currentshorttasks[0].dessymptoms1!,
                                dessymptoms2: currentShortTaskControler
                                    .currentshorttasks[0].dessymptoms2!,
                                dessymptoms3: currentShortTaskControler
                                        .currentshorttasks[0].dessymptoms3 ??
                                    true,
                                bigsideeffects: currentShortTaskControler
                                    .currentshorttasks[0].bigsideeffects!,
                                sideeffects: currentShortTaskControler
                                    .currentshorttasks[0].sideeffects!,
                                placeparestesia: currentShortTaskControler
                                    .currentshorttasks[0].placeparestesia!,
                                longestsuitable: currentShortTaskControler
                                    .currentshorttasks[0].longestsuitable!))
                      }
                    : issuccess &&
                            currentShortTaskControler
                                    .currentshorttasks[0].position ==
                                LocaleKeys.clie.tr()
                        ? {
                            candidatelongtaskLieController
                                .addCandidateLongTaskLie(CandidateLongTaskLie(
                                    id: currentShortTaskControler
                                        .currentshorttasks[0].id)),
                            shorttasklieController.addSuccess(
                                "success",
                                currentShortTaskControler
                                    .currentshorttasks[0].id),
                            successShortLieController
                                .addSuccessShortTaskLie(
                                    SuccesShortTaskLie(
                                        id: currentShortTaskControler
                                            .currentshorttasks[0].id,
                                        program: currentShortTaskControler
                                            .currentshorttasks[0].program,
                                        electrodes: currentShortTaskControler
                                            .currentshorttasks[0].electrodes,
                                        amplit: currentShortTaskControler
                                            .currentshorttasks[0].amplit!,
                                        hideampl: currentShortTaskControler
                                            .currentshorttasks[0].hideamplt,
                                        freq: currentShortTaskControler
                                            .currentshorttasks[0].freq,
                                        hidefreq: currentShortTaskControler
                                            .currentshorttasks[0].hidefreq,
                                        dur: currentShortTaskControler
                                            .currentshorttasks[0].dur,
                                        hidedur: currentShortTaskControler
                                            .currentshorttasks[0].hidedur,
                                        begintesttime: currentShortTaskControler
                                            .currentshorttasks[0]
                                            .begintesttime!,
                                        stoptesttime: currentShortTaskControler
                                            .currentshorttasks[0].stoptesttime!,
                                        durationtest: currentShortTaskControler
                                            .currentshorttasks[0].durationtest!,
                                        currentlevelpain:
                                            currentShortTaskControler
                                                .currentshorttasks[0]
                                                .currentlevelpain!,
                                        dessymptoms1: currentShortTaskControler
                                            .currentshorttasks[0].dessymptoms1!,
                                        dessymptoms2: currentShortTaskControler
                                            .currentshorttasks[0].dessymptoms2!,
                                        dessymptoms3: currentShortTaskControler
                                                .currentshorttasks[0]
                                                .dessymptoms3 ??
                                            true,
                                        bigsideeffects: currentShortTaskControler
                                            .currentshorttasks[0]
                                            .bigsideeffects!,
                                        sideeffects: currentShortTaskControler
                                            .currentshorttasks[0].sideeffects!,
                                        placeparestesia: currentShortTaskControler
                                            .currentshorttasks[0]
                                            .placeparestesia!,
                                        longestsuitable:
                                            currentShortTaskControler
                                                .currentshorttasks[0]
                                                .longestsuitable!))
                          }
                        : {
                            shorttasklieController.addSuccess(
                                "unsuccess",
                                currentShortTaskControler
                                    .currentshorttasks[0].id),
                            unsuccessShortLieController.addUnsuccessShortTaskLie(
                                UnSuccesShortTaskLie(
                                    id: currentShortTaskControler
                                        .currentshorttasks[0].id,
                                    program: currentShortTaskControler
                                        .currentshorttasks[0].program,
                                    electrodes: currentShortTaskControler
                                        .currentshorttasks[0].electrodes,
                                    amplit: currentShortTaskControler
                                        .currentshorttasks[0].amplit!,
                                    hideampl: currentShortTaskControler
                                        .currentshorttasks[0].hideamplt,
                                    freq: currentShortTaskControler
                                        .currentshorttasks[0].freq,
                                    hidefreq: currentShortTaskControler
                                        .currentshorttasks[0].hidefreq,
                                    dur: currentShortTaskControler
                                        .currentshorttasks[0].dur,
                                    hidedur: currentShortTaskControler
                                        .currentshorttasks[0].hidedur,
                                    begintesttime: currentShortTaskControler
                                        .currentshorttasks[0].begintesttime!,
                                    stoptesttime: currentShortTaskControler
                                        .currentshorttasks[0].stoptesttime!,
                                    durationtest: currentShortTaskControler
                                        .currentshorttasks[0].durationtest!,
                                    currentlevelpain: currentShortTaskControler
                                        .currentshorttasks[0].currentlevelpain!,
                                    dessymptoms1: currentShortTaskControler
                                        .currentshorttasks[0].dessymptoms1!,
                                    dessymptoms2: currentShortTaskControler
                                        .currentshorttasks[0].dessymptoms2!,
                                    dessymptoms3: currentShortTaskControler
                                            .currentshorttasks[0]
                                            .dessymptoms3 ??
                                        true,
                                    bigsideeffects: currentShortTaskControler
                                        .currentshorttasks[0].bigsideeffects!,
                                    sideeffects: currentShortTaskControler
                                        .currentshorttasks[0].sideeffects!,
                                    placeparestesia: currentShortTaskControler
                                        .currentshorttasks[0].placeparestesia!,
                                    longestsuitable: currentShortTaskControler
                                        .currentshorttasks[0].longestsuitable!))
                          };
  }
}
