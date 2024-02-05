import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:feedbackscs2024/collections/current_test.dart';

import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/short_task_move_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:provider/provider.dart';
import '../../../../../collections/patient.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final amplcondCtrl = TextEditingController();
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readCurrentTest();
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<CurrentTest> currenttask = feedbackSCSDatabase.currentTest;
    final int currentId = currenttask[0].idshorttest!;
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readActiveShortTest(currentId);
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readundefShortTestMove();

    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    final String _sex = currentpatient[0].sex;
    final String position = currenttask[0].position;
    final String condition = currenttask[0].condition;
    final String program = currenttask[0].program;
    final double amplit = currenttask[0].amplit;
    final bool hideamplt = currenttask[0].hideamplt;
    final int freq = currenttask[0].freq;
    final bool hidefreq = currenttask[0].hidefreq;
    final int dur = currenttask[0].dur;
    final bool hidedur = currenttask[0].hidedur;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        // appBar: AppBar(
        //   centerTitle: true,
        //   backgroundColor: Theme.of(context).colorScheme.primary,
        //   automaticallyImplyLeading: false,
        //   title: Text(
        //     position +
        //         ' ' +
        //         TimeTestConst.timeshorttest.toString() +
        //         ' ' +
        //         LocaleKeys.min.tr(),
        //   ),
        // ),
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                AppPictureContainer(
                    widget1: Container(),
                    widget2: Container(),
                    picture: ((position == LocaleKeys.cmove.tr()) &
                            (_sex == LocaleKeys.fem.tr()))
                        ? AppImages.painmovewomen
                        : ((position == LocaleKeys.cmove.tr()) &
                                (_sex == LocaleKeys.mal.tr()))
                            ? AppImages.painmovemen
                            : ((position == LocaleKeys.cseat.tr()) &
                                    (_sex == LocaleKeys.fem.tr()))
                                ? AppImages.painseatwomen
                                : ((position == LocaleKeys.cseat.tr()) &
                                        (_sex == LocaleKeys.mal.tr()))
                                    ? AppImages.painseatmen
                                    : ((position == LocaleKeys.clie.tr()) &
                                            (_sex == LocaleKeys.fem.tr()))
                                        ? AppImages.painsleepwomen
                                        : AppImages.painsleepmen,
                    title: LocaleKeys.shorttest.tr()),
                AppHeader(header: LocaleKeys.enterparametres.tr()),
                Expanded(
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Column(
                      children: [
                        AppCommentText(
                            text: position == LocaleKeys.cmove.tr()
                                ? LocaleKeys.conditionmove1.tr() +
                                    ' ' +
                                    TimeTestConst.timeshorttest.toString() +
                                    ' ' +
                                    LocaleKeys.conditionmove2.tr()
                                : position == LocaleKeys.cseat.tr()
                                    ? LocaleKeys.conditionseat1.tr() +
                                        TimeTestConst.timeshorttest.toString() +
                                        " " +
                                        LocaleKeys.conditionseat2.tr()
                                    : LocaleKeys.conditionlie1.tr() +
                                        ' ' +
                                        TimeTestConst.timeshorttest.toString() +
                                        ' ' +
                                        LocaleKeys.conditionlie2.tr()),
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
                              AppDivider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: AppTextField(
                                  isText: false,
                                  title: LocaleKeys.setamplitudecond.tr() +
                                      ' ' +
                                      condition.toString(),
                                  controller: amplcondCtrl,
                                ),
                              ),
                              AppDivider(),
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
                              !hidefreq ? AppDivider() : Container(),
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
                              !hidedur ? AppDivider() : Container(),
                            ],
                          ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Theme.of(context).colorScheme.secondary,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: ElevatedButton(
                      onPressed: () {
                        // currentShortTaskControler
                        //     .addStartTestTimeShortTask(DateTime.now());
                        // addconditionamp(
                        //     currentShortTaskControler,
                        //     amplcondCtrl,
                        //     _position,
                      },
                      child: Text(
                        LocaleKeys.begintest.tr(),
                        style: Theme.of(context).textTheme.labelLarge,
                      )),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }

  void addconditionamp(
      CurrentShortTaskControler currentShortTaskControler,
      TextEditingController amplcondCtrl,
      String _position,
      ShortTaskMoveControler _shorttaskmovecontroller,
      BuildContext context,
      ShortTaskSeatControler _shorttaskseatcontroller,
      ShortTaskLieControler _shorttaskliecontroller) {
    int _countdouble = 0;
    if (currentShortTaskControler.currentshorttasks[0].condition ==
        LocaleKeys.fixamp.tr()) {
      context.read<FeedbackSCSDatabase>().updateActiveTask('st2');
      context.pushNamed(RouteNames.shorttest2);
    } else {
      currentShortTaskControler
          .addConditionAmpTestTimeShortTask(double.parse(amplcondCtrl.text));

      _position == LocaleKeys.cmove.tr()
          ? {
              for (int i = 0;
                  i < _shorttaskmovecontroller.shorttaskmoves.length;
                  i++)
                {
                  if ((_shorttaskmovecontroller.shorttaskmoves[i].fixformula ==
                          'el:' +
                              currentShortTaskControler
                                  .currentshorttasks[0].electrodes +
                              ' ampl:' +
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit
                                  .toString() +
                              ' freq: ' +
                              currentShortTaskControler
                                  .currentshorttasks[0].freq
                                  .toString() +
                              ' dur: ' +
                              currentShortTaskControler.currentshorttasks[0].dur
                                  .toString()) &
                      (_shorttaskmovecontroller.shorttaskmoves[i].success !=
                          'undef'))
                    {_countdouble++},
                  if (_countdouble == 0)
                    {
                      _shorttaskmovecontroller.addAmpCondition(
                          currentShortTaskControler.currentshorttasks[0].id,
                          currentShortTaskControler
                              .currentshorttasks[0].amplit!),
                      context
                          .read<FeedbackSCSDatabase>()
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
                          _shorttaskmovecontroller.addAmpCondition(
                              currentShortTaskControler.currentshorttasks[0].id,
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit!),
                          _shorttaskmovecontroller.addSuccess(
                              'double',
                              currentShortTaskControler
                                  .currentshorttasks[0].id),
                          currentShortTaskControler.clearcurrentTaskShort(),
                          context
                              .read<FeedbackSCSDatabase>()
                              .updateActiveTask('no tasks'),
                          context.pushNamed(RouteNames.patienttasks)
                        },
                        description: Text(LocaleKeys.noaddtask.tr()),
                        onDismiss: () => {
                          _shorttaskmovecontroller.addAmpCondition(
                              currentShortTaskControler.currentshorttasks[0].id,
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit!),
                          _shorttaskmovecontroller.addSuccess(
                              'double',
                              currentShortTaskControler
                                  .currentshorttasks[0].id),
                          currentShortTaskControler.clearcurrentTaskShort(),
                          context
                              .read<FeedbackSCSDatabase>()
                              .updateActiveTask('no tasks'),
                          context.pushNamed(RouteNames.patienttasks)
                        },
                      ).show(context)
                    }
                }
            }
          : _position == LocaleKeys.cseat.tr()
              ? {
                  for (int i = 0;
                      i < _shorttaskseatcontroller.shorttaskseats.length;
                      i++)
                    {
                      if ((_shorttaskseatcontroller
                                  .shorttaskseats[i].fixformula ==
                              'el:' +
                                  currentShortTaskControler
                                      .currentshorttasks[0].electrodes +
                                  ' ampl:' +
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit
                                      .toString() +
                                  ' freq: ' +
                                  currentShortTaskControler
                                      .currentshorttasks[0].freq
                                      .toString() +
                                  ' dur: ' +
                                  currentShortTaskControler
                                      .currentshorttasks[0].dur
                                      .toString()) &
                          (_shorttaskseatcontroller.shorttaskseats[i].success !=
                              'undef'))
                        {_countdouble++},
                      if (_countdouble == 0)
                        {
                          _shorttaskseatcontroller.addAmpCondition(
                              currentShortTaskControler.currentshorttasks[0].id,
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit!),
                          context
                              .read<FeedbackSCSDatabase>()
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
                              _shorttaskseatcontroller.addAmpCondition(
                                  currentShortTaskControler
                                      .currentshorttasks[0].id,
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit!),
                              _shorttaskseatcontroller.addSuccess(
                                  'double',
                                  currentShortTaskControler
                                      .currentshorttasks[0].id),
                              currentShortTaskControler.clearcurrentTaskShort(),
                              context
                                  .read<FeedbackSCSDatabase>()
                                  .updateActiveTask('no tasks'),
                              context.pushNamed(RouteNames.patienttasks)
                            },
                            description: Text(LocaleKeys.noaddtask.tr()),
                            onDismiss: () => {
                              _shorttaskseatcontroller.addAmpCondition(
                                  currentShortTaskControler
                                      .currentshorttasks[0].id,
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit!),
                              _shorttaskseatcontroller.addSuccess(
                                  'double',
                                  currentShortTaskControler
                                      .currentshorttasks[0].id),
                              currentShortTaskControler.clearcurrentTaskShort(),
                              context
                                  .read<FeedbackSCSDatabase>()
                                  .updateActiveTask('no tasks'),
                              context.pushNamed(RouteNames.patienttasks)
                            },
                          ).show(context)
                        }
                    }
                }
              : {
                  for (int i = 0;
                      i < _shorttaskliecontroller.shorttasklies.length;
                      i++)
                    {
                      if ((_shorttaskliecontroller
                                  .shorttasklies[i].fixformula ==
                              'el:' +
                                  currentShortTaskControler
                                      .currentshorttasks[0].electrodes +
                                  ' ampl:' +
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit
                                      .toString() +
                                  ' freq: ' +
                                  currentShortTaskControler
                                      .currentshorttasks[0].freq
                                      .toString() +
                                  ' dur: ' +
                                  currentShortTaskControler
                                      .currentshorttasks[0].dur
                                      .toString()) &
                          (_shorttaskliecontroller.shorttasklies[i].success !=
                              'undef'))
                        {_countdouble++},
                      if (_countdouble == 0)
                        {
                          _shorttaskliecontroller.addAmpCondition(
                              currentShortTaskControler.currentshorttasks[0].id,
                              currentShortTaskControler
                                  .currentshorttasks[0].amplit!),
                          context
                              .read<FeedbackSCSDatabase>()
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
                              _shorttaskliecontroller.addAmpCondition(
                                  currentShortTaskControler
                                      .currentshorttasks[0].id,
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit!),
                              _shorttaskliecontroller.addSuccess(
                                  'double',
                                  currentShortTaskControler
                                      .currentshorttasks[0].id),
                              context
                                  .read<FeedbackSCSDatabase>()
                                  .updateActiveTask('no tasks'),
                              currentShortTaskControler.clearcurrentTaskShort(),
                              context.pushNamed(RouteNames.patienttasks)
                            },
                            description: Text(LocaleKeys.noaddtask.tr()),
                            onDismiss: () => {
                              _shorttaskliecontroller.addAmpCondition(
                                  currentShortTaskControler
                                      .currentshorttasks[0].id,
                                  currentShortTaskControler
                                      .currentshorttasks[0].amplit!),
                              _shorttaskliecontroller.addSuccess(
                                  'double',
                                  currentShortTaskControler
                                      .currentshorttasks[0].id),
                              currentShortTaskControler.clearcurrentTaskShort(),
                              context
                                  .read<FeedbackSCSDatabase>()
                                  .updateActiveTask('no tasks'),
                              context.pushNamed(RouteNames.patienttasks)
                            },
                          ).show(context)
                        }
                    }
                };
    }
    ;
  }
}
