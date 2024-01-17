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

    final _shorttaskmoveController = Get.find<ShortTaskMoveControler>();
    final _successShortMoveController =
        Get.find<SuccessShortTaskMoveControler>();
    final _unsuccessShortMoveController =
        Get.find<UnsuccessShortTaskMoveControler>();

    final _shorttaskseatController = Get.find<ShortTaskSeatControler>();
    final _successShortSeatController =
        Get.find<SuccessShortTaskSeatControler>();
    final _unsuccessShortSeatController =
        Get.find<UnsuccessShortTaskSeatControler>();

    final _shorttasklieController = Get.find<ShortTaskLieControler>();
    final _successShortLieController = Get.find<SuccessShortTaskLieControler>();
    final _unsuccessShortLieController =
        Get.find<UnsuccessShortTaskLieControler>();

    final _candidatelongtaskMoveController =
        Get.find<CandidateLongTaskMoveControler>();
    final _candidatelongtaskSeatController =
        Get.find<CandidateLongTaskSeatControler>();
    final _candidatelongtaskLieController =
        Get.find<CandidateLongTaskLieControler>();

    return GetBuilder(
        builder: (CurrentShortTaskControler currentShortTaskControler) {
      final bool _issuccess =
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
                      bodyrow: currentShortTaskControler
                              .currentshorttasks[0].durationtest
                              .toString() +
                          ' ' +
                          LocaleKeys.min.tr()),
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
                  AppDivider(),
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
                  AppDivider(),
                  AppResult(
                      text: _issuccess
                          // ignore: dead_code
                          ? LocaleKeys.progcandidatlongtest.tr()
                          : LocaleKeys.prognoncandidatlongtest.tr(),
                      isSucces: _issuccess),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        add_suc_and_candid(
                            _issuccess,
                            currentShortTaskControler,
                            _candidatelongtaskMoveController,
                            _shorttaskmoveController,
                            _successShortMoveController,
                            _unsuccessShortMoveController,
                            _candidatelongtaskSeatController,
                            _shorttaskseatController,
                            _successShortSeatController,
                            _unsuccessShortSeatController,
                            _candidatelongtaskLieController,
                            _shorttasklieController,
                            _successShortLieController,
                            _unsuccessShortLieController);
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
      bool _issuccess,
      CurrentShortTaskControler currentShortTaskControler,
      CandidateLongTaskMoveControler _candidatelongtaskMoveController,
      ShortTaskMoveControler _shorttaskmoveController,
      SuccessShortTaskMoveControler _successShortMoveController,
      UnsuccessShortTaskMoveControler _unsuccessShortMoveController,
      CandidateLongTaskSeatControler _candidatelongtaskSeatController,
      ShortTaskSeatControler _shorttaskseatController,
      SuccessShortTaskSeatControler _successShortSeatController,
      UnsuccessShortTaskSeatControler _unsuccessShortSeatController,
      CandidateLongTaskLieControler _candidatelongtaskLieController,
      ShortTaskLieControler _shorttasklieController,
      SuccessShortTaskLieControler _successShortLieController,
      UnsuccessShortTaskLieControler _unsuccessShortLieController) {
    _issuccess &&
            currentShortTaskControler.currentshorttasks[0].position ==
                LocaleKeys.cmove.tr()
        ? {
            _candidatelongtaskMoveController.addCandidateLongTaskMove(
                CandidateLongTaskMove(
                    id: currentShortTaskControler.currentshorttasks[0].id)),
            _shorttaskmoveController.addSuccess(
                "success", currentShortTaskControler.currentshorttasks[0].id),
            _successShortMoveController.addSuccessShortTaskMove(
                SuccesShortTaskMove(
                    id: currentShortTaskControler.currentshorttasks[0].id,
                    program: currentShortTaskControler
                        .currentshorttasks[0].program,
                    electrodes: currentShortTaskControler
                        .currentshorttasks[0].electrodes,
                    amplit: currentShortTaskControler
                        .currentshorttasks[0].amplit!,
                    hideampl: currentShortTaskControler
                        .currentshorttasks[0].hideamplt,
                    freq: currentShortTaskControler.currentshorttasks[0].freq,
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
        : !_issuccess &&
                currentShortTaskControler.currentshorttasks[0].position ==
                    LocaleKeys.cmove.tr()
            ? {
                _shorttaskmoveController.addSuccess("unsuccess",
                    currentShortTaskControler.currentshorttasks[0].id),
                _unsuccessShortMoveController.addUnsuccessShortTaskMove(
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
            : _issuccess &&
                    currentShortTaskControler.currentshorttasks[0].position ==
                        LocaleKeys.cseat.tr()
                ? {
                    _candidatelongtaskSeatController.addCandidateLongTaskSeat(
                        CandidateLongTaskSeat(
                            id: currentShortTaskControler
                                .currentshorttasks[0].id)),
                    _shorttaskseatController.addSuccess("success",
                        currentShortTaskControler.currentshorttasks[0].id),
                    _successShortSeatController
                        .addSuccessShortTaskSeat(
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
                : !_issuccess &&
                        currentShortTaskControler
                                .currentshorttasks[0].position ==
                            LocaleKeys.cseat.tr()
                    ? {
                        _shorttaskseatController.addSuccess("unsuccess",
                            currentShortTaskControler.currentshorttasks[0].id),
                        _unsuccessShortSeatController.addUnsuccessShortTaskSeat(
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
                    : _issuccess &&
                            currentShortTaskControler
                                    .currentshorttasks[0].position ==
                                LocaleKeys.clie.tr()
                        ? {
                            _candidatelongtaskLieController
                                .addCandidateLongTaskLie(CandidateLongTaskLie(
                                    id: currentShortTaskControler
                                        .currentshorttasks[0].id)),
                            _shorttasklieController.addSuccess(
                                "success",
                                currentShortTaskControler
                                    .currentshorttasks[0].id),
                            _successShortLieController.addSuccessShortTaskLie(
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
                          }
                        : {
                            _shorttasklieController.addSuccess(
                                "unsuccess",
                                currentShortTaskControler
                                    .currentshorttasks[0].id),
                            _unsuccessShortLieController.addUnsuccessShortTaskLie(
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
