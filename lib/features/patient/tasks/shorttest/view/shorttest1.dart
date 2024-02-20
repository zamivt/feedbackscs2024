import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:feedbackscs2024/collections/current_test.dart';

import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/short_task_move_controller.dart';
import 'package:feedbackscs2024/repository/current_patient_provider.dart';
import 'package:feedbackscs2024/repository/current_test_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import '../../../../../collections/patient.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/short_test_provider.dart';
import '../../../../../services/entities/data/test_const.dart';
import '../../../../doc/tasks/controllers/short_task_lie_controller.dart';
import '../../../../doc/tasks/controllers/short_task_seat_controller.dart';
import '../controllers/current_short_controller.dart';

class ShortTest1 extends StatefulWidget {
  const ShortTest1({super.key});

  @override
  State<ShortTest1> createState() => _ShortTest1State();
}

class _ShortTest1State extends State<ShortTest1> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final amplcondCtrl = TextEditingController();
    Provider.of<CurrentTestProvider>(context, listen: false).readCurrentTest();
    final currenttestbase = context.watch<CurrentTestProvider>();
    List<CurrentTest> currenttask = currenttestbase.currentTest;
    final int currentId = currenttask[0].idshorttest!;
    Provider.of<ShortTestProvider>(context, listen: false)
        .readActiveShortTest(currentId);
    Provider.of<ShortTestProvider>(context, listen: false)
        .readundefShortTestMove();
    final currentpatbase = context.watch<CurrentPatientProvider>();
    List<IPatient> currentpatient = currentpatbase.currentPatient;
    final String sex = currentpatient[0].sex;
    final int id = currenttask[0].id;
    final String position = currenttask[0].position!;
    final String condition = currenttask[0].condition!;
    final String program = currenttask[0].program!;
    final double amplit = currenttask[0].amplit!;
    final bool hideamplt = currenttask[0].hideamplt!;
    final int freq = currenttask[0].freq!;
    final bool hidefreq = currenttask[0].hidefreq!;
    final int dur = currenttask[0].dur!;
    final bool hidedur = currenttask[0].hidedur!;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  AppPictureContainer(
                      widget1: Container(),
                      widget2: Container(),
                      picture: ((position == LocaleKeys.cmove.tr()) &
                              (sex == LocaleKeys.fem.tr()))
                          ? AppImages.painmovewomen
                          : ((position == LocaleKeys.cmove.tr()) &
                                  (sex == LocaleKeys.mal.tr()))
                              ? AppImages.painmovemen
                              : ((position == LocaleKeys.cseat.tr()) &
                                      (sex == LocaleKeys.fem.tr()))
                                  ? AppImages.painseatwomen
                                  : ((position == LocaleKeys.cseat.tr()) &
                                          (sex == LocaleKeys.mal.tr()))
                                      ? AppImages.painseatmen
                                      : ((position == LocaleKeys.clie.tr()) &
                                              (sex == LocaleKeys.fem.tr()))
                                          ? AppImages.painsleepwomen
                                          : AppImages.painsleepmen,
                      title: LocaleKeys.shorttest.tr()),
                  AppHeader(header: LocaleKeys.enterparametres.tr()),
                  ColoredBox(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Column(
                      children: [
                        AppCommentText(
                            text: position == LocaleKeys.cmove.tr()
                                ? '${LocaleKeys.conditionmove1.tr()} ${TimeTestConst.timeshorttest} ${LocaleKeys.conditionmove2.tr()}'
                                : position == LocaleKeys.cseat.tr()
                                    ? "${LocaleKeys.conditionseat1.tr()}${TimeTestConst.timeshorttest} ${LocaleKeys.conditionseat2.tr()}"
                                    : '${LocaleKeys.conditionlie1.tr()} ${TimeTestConst.timeshorttest} ${LocaleKeys.conditionlie2.tr()}'),
                        if (condition == LocaleKeys.fixamp.tr())
                          AppTableFullParamStim(
                            program: program,
                            hideamplitude: hideamplt,
                            amplitude: amplit,
                            hidefreq: hidefreq,
                            freq: freq,
                            hidedur: hidedur,
                            dur: dur,
                          )
                        else
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(LocaleKeys.program.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge),
                                    Text(program,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge)
                                  ],
                                ),
                              ),
                              const AppDivider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: AppTextField(
                                  isText: false,
                                  title:
                                      '${LocaleKeys.setamplitudecond.tr()} $condition',
                                  controller: amplcondCtrl,
                                ),
                              ),
                              const AppDivider(),
                              !hidefreq
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(LocaleKeys.freq.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge),
                                          Text(freq.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge)
                                        ],
                                      ),
                                    )
                                  : Container(),
                              !hidefreq ? const AppDivider() : Container(),
                              !hidedur
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(LocaleKeys.dur.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge),
                                          Text(freq.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge)
                                        ],
                                      ),
                                    )
                                  : Container(),
                              !hidedur ? const AppDivider() : Container(),
                            ],
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.secondary,
                    padding: EdgeInsets.only(right: 10, bottom: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Logger().e('probe');
                              context
                                  .read<CurrentTestProvider>()
                                  .updateActiveTask('no tasks');
                              context.pushNamed(RouteNames.patienttasks);
                            },
                            child: Text(
                              'выполнить позже',
                              style: Theme.of(context).textTheme.labelLarge,
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Logger().e('probe');
                              Logger().d(id);
                              // context
                              //     .read<FeedbackSCSDatabase>()
                              //     .updateSt1withoutconditionShortTest(id);
                              //   context
                              //       .read<FeedbackSCSDatabase>()
                              //       .updateActiveTask('st2');

                              //   context.pushNamed(RouteNames.shorttest2);
                              //
                            },
                            child: Text(
                              LocaleKeys.begintest.tr() + '3',
                              style: Theme.of(context).textTheme.labelLarge,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void addconditionamp(
      CurrentShortTaskControler currentShortTaskControler,
      TextEditingController amplcondCtrl,
      String position,
      ShortTaskMoveControler shorttaskmovecontroller,
      BuildContext context,
      ShortTaskSeatControler shorttaskseatcontroller,
      ShortTaskLieControler shorttaskliecontroller) {
    int countdouble = 0;
    if (currentShortTaskControler.currentshorttasks[0].condition ==
        LocaleKeys.fixamp.tr()) {
      context.read<CurrentTestProvider>().updateActiveTask('st2');
      context.pushNamed(RouteNames.shorttest2);
    } else {
      currentShortTaskControler
          .addConditionAmpTestTimeShortTask(double.parse(amplcondCtrl.text));

      position == LocaleKeys.cmove.tr()
          ? {
              for (int i = 0;
                  i < shorttaskmovecontroller.shorttaskmoves.length;
                  i++)
                {
                  if ((shorttaskmovecontroller.shorttaskmoves[i].fixformula ==
                          'el:${currentShortTaskControler.currentshorttasks[0].electrodes} ampl:${currentShortTaskControler.currentshorttasks[0].amplit} freq: ${currentShortTaskControler.currentshorttasks[0].freq} dur: ${currentShortTaskControler.currentshorttasks[0].dur}') &
                      (shorttaskmovecontroller.shorttaskmoves[i].success !=
                          'undef'))
                    {countdouble++},
                  if (countdouble == 0)
                    {
                      shorttaskmovecontroller.addAmpCondition(
                          currentShortTaskControler.currentshorttasks[0].id,
                          currentShortTaskControler
                              .currentshorttasks[0].amplit!),
                      context
                          .read<CurrentTestProvider>()
                          .updateActiveTask('st2'),
                      context.pushNamed(RouteNames.shorttest2)
                    }
                  else
                    {
                      ElegantNotification.error(
                        width: 360,
                        notificationPosition: NotificationPosition.center,
                        animation: AnimationType.fromBottom,
                        title: Text(currentShortTaskControler
                            .currentshorttasks[0].position),
                        onProgressFinished: () => {
                          shorttaskmovecontroller.addAmpCondition(
                              currentShortTaskControler.currentshorttasks[0].id,
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit!),
                          shorttaskmovecontroller.addSuccess(
                              'double',
                              currentShortTaskControler
                                  .currentshorttasks[0].id),
                          currentShortTaskControler.clearcurrentTaskShort(),
                          context
                              .read<CurrentTestProvider>()
                              .updateActiveTask('no tasks'),
                          context.pushNamed(RouteNames.patienttasks)
                        },
                        description: Text(LocaleKeys.noaddtask.tr()),
                        onDismiss: () => {
                          shorttaskmovecontroller.addAmpCondition(
                              currentShortTaskControler.currentshorttasks[0].id,
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit!),
                          shorttaskmovecontroller.addSuccess(
                              'double',
                              currentShortTaskControler
                                  .currentshorttasks[0].id),
                          currentShortTaskControler.clearcurrentTaskShort(),
                          context
                              .read<CurrentTestProvider>()
                              .updateActiveTask('no tasks'),
                          context.pushNamed(RouteNames.patienttasks)
                        },
                      ).show(context)
                    }
                }
            }
          : position == LocaleKeys.cseat.tr()
              ? {
                  for (int i = 0;
                      i < shorttaskseatcontroller.shorttaskseats.length;
                      i++)
                    {
                      if ((shorttaskseatcontroller
                                  .shorttaskseats[i].fixformula ==
                              'el:${currentShortTaskControler.currentshorttasks[0].electrodes} ampl:${currentShortTaskControler.currentshorttasks[0].amplit} freq: ${currentShortTaskControler.currentshorttasks[0].freq} dur: ${currentShortTaskControler.currentshorttasks[0].dur}') &
                          (shorttaskseatcontroller.shorttaskseats[i].success !=
                              'undef'))
                        {countdouble++},
                      if (countdouble == 0)
                        {
                          shorttaskseatcontroller.addAmpCondition(
                              currentShortTaskControler.currentshorttasks[0].id,
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit!),
                          context
                              .read<CurrentTestProvider>()
                              .updateActiveTask('st2'),
                          context.pushNamed(RouteNames.shorttest2)
                        }
                      else
                        {
                          ElegantNotification.error(
                            width: 360,
                            notificationPosition: NotificationPosition.center,
                            animation: AnimationType.fromBottom,
                            title: Text(currentShortTaskControler
                                .currentshorttasks[0].position),
                            onProgressFinished: () => {
                              shorttaskseatcontroller.addAmpCondition(
                                  currentShortTaskControler
                                      .currentshorttasks[0].id,
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit!),
                              shorttaskseatcontroller.addSuccess(
                                  'double',
                                  currentShortTaskControler
                                      .currentshorttasks[0].id),
                              currentShortTaskControler.clearcurrentTaskShort(),
                              context
                                  .read<CurrentTestProvider>()
                                  .updateActiveTask('no tasks'),
                              context.pushNamed(RouteNames.patienttasks)
                            },
                            description: Text(LocaleKeys.noaddtask.tr()),
                            onDismiss: () => {
                              shorttaskseatcontroller.addAmpCondition(
                                  currentShortTaskControler
                                      .currentshorttasks[0].id,
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit!),
                              shorttaskseatcontroller.addSuccess(
                                  'double',
                                  currentShortTaskControler
                                      .currentshorttasks[0].id),
                              currentShortTaskControler.clearcurrentTaskShort(),
                              context
                                  .read<CurrentTestProvider>()
                                  .updateActiveTask('no tasks'),
                              context.pushNamed(RouteNames.patienttasks)
                            },
                          ).show(context)
                        }
                    }
                }
              : {
                  for (int i = 0;
                      i < shorttaskliecontroller.shorttasklies.length;
                      i++)
                    {
                      if ((shorttaskliecontroller.shorttasklies[i].fixformula ==
                              'el:${currentShortTaskControler.currentshorttasks[0].electrodes} ampl:${currentShortTaskControler.currentshorttasks[0].amplit} freq: ${currentShortTaskControler.currentshorttasks[0].freq} dur: ${currentShortTaskControler.currentshorttasks[0].dur}') &
                          (shorttaskliecontroller.shorttasklies[i].success !=
                              'undef'))
                        {countdouble++},
                      if (countdouble == 0)
                        {
                          shorttaskliecontroller.addAmpCondition(
                              currentShortTaskControler.currentshorttasks[0].id,
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit!),
                          context
                              .read<CurrentTestProvider>()
                              .updateActiveTask('st2'),
                          context.pushNamed(RouteNames.shorttest2)
                        }
                      else
                        {
                          ElegantNotification.error(
                            width: 360,
                            notificationPosition: NotificationPosition.center,
                            animation: AnimationType.fromBottom,
                            title: Text(currentShortTaskControler
                                .currentshorttasks[0].position),
                            onProgressFinished: () => {
                              shorttaskliecontroller.addAmpCondition(
                                  currentShortTaskControler
                                      .currentshorttasks[0].id,
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit!),
                              shorttaskliecontroller.addSuccess(
                                  'double',
                                  currentShortTaskControler
                                      .currentshorttasks[0].id),
                              context
                                  .read<CurrentTestProvider>()
                                  .updateActiveTask('no tasks'),
                              currentShortTaskControler.clearcurrentTaskShort(),
                              context.pushNamed(RouteNames.patienttasks)
                            },
                            description: Text(LocaleKeys.noaddtask.tr()),
                            onDismiss: () => {
                              shorttaskliecontroller.addAmpCondition(
                                  currentShortTaskControler
                                      .currentshorttasks[0].id,
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit!),
                              shorttaskliecontroller.addSuccess(
                                  'double',
                                  currentShortTaskControler
                                      .currentshorttasks[0].id),
                              currentShortTaskControler.clearcurrentTaskShort(),
                              context
                                  .read<CurrentTestProvider>()
                                  .updateActiveTask('no tasks'),
                              context.pushNamed(RouteNames.patienttasks)
                            },
                          ).show(context)
                        }
                    }
                };
    }
  }
}
