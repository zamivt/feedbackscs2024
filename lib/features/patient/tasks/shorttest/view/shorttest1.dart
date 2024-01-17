import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/short_task_move_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
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

class ShortTest1 extends StatelessWidget {
  const ShortTest1({super.key});

  @override
  Widget build(BuildContext context) {
    final _shorttaskmovecontroller = Get.find<ShortTaskMoveControler>();
    final _shorttaskseatcontroller = Get.find<ShortTaskSeatControler>();
    final _shorttaskliecontroller = Get.find<ShortTaskLieControler>();
    final _position =
        Get.find<CurrentShortTaskControler>().currentshorttasks[0].position;
    final _formKey = GlobalKey<FormState>();
    final amplcondCtrl = TextEditingController();
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

    final String _sex = currentpatient[0].sex;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        title: Text(
          _position +
              ' ' +
              TimeTestConst.timeshorttest.toString() +
              ' ' +
              LocaleKeys.min.tr(),
        ),
      ),
      body: GetBuilder(
          builder: (CurrentShortTaskControler currentShortTaskControler) {
        return SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                AppPictureContainer(
                    widget1: Container(),
                    widget2: Container(),
                    picture: ((_position == LocaleKeys.cmove.tr()) &
                            (_sex == LocaleKeys.fem.tr()))
                        ? AppImages.painmovewomen
                        : ((_position == LocaleKeys.cmove.tr()) &
                                (_sex == LocaleKeys.mal.tr()))
                            ? AppImages.painmovemen
                            : ((_position == LocaleKeys.cseat.tr()) &
                                    (_sex == LocaleKeys.fem.tr()))
                                ? AppImages.painseatwomen
                                : ((_position == LocaleKeys.cseat.tr()) &
                                        (_sex == LocaleKeys.mal.tr()))
                                    ? AppImages.painseatmen
                                    : ((_position == LocaleKeys.clie.tr()) &
                                            (_sex == LocaleKeys.fem.tr()))
                                        ? AppImages.painsleepwomen
                                        : AppImages.painsleepmen,
                    title: LocaleKeys.shorttest.tr()),
                AppHeader(header: LocaleKeys.enterparametres.tr()),
                AppCommentText(
                    text: _position == LocaleKeys.cmove.tr()
                        ? LocaleKeys.conditionmove1.tr() +
                            ' ' +
                            TimeTestConst.timeshorttest.toString() +
                            ' ' +
                            LocaleKeys.conditionmove2.tr()
                        : currentShortTaskControler
                                    .currentshorttasks[0].position ==
                                LocaleKeys.cseat.tr()
                            ? LocaleKeys.conditionseat1.tr() +
                                TimeTestConst.timeshorttest.toString() +
                                " " +
                                LocaleKeys.conditionseat2.tr()
                            : LocaleKeys.conditionlie1.tr() +
                                ' ' +
                                TimeTestConst.timeshorttest.toString() +
                                ' ' +
                                LocaleKeys.conditionlie2.tr()),
                SizedBox(
                  height: 10,
                ),
                if (currentShortTaskControler.currentshorttasks[0].condition ==
                    LocaleKeys.fixamp.tr())
                  AppTableFullParamStim(
                    program:
                        currentShortTaskControler.currentshorttasks[0].program,
                    hideamplitude: currentShortTaskControler
                        .currentshorttasks[0].hideamplt,
                    amplitude:
                        currentShortTaskControler.currentshorttasks[0].amplit ??
                            0,
                    hidefreq:
                        currentShortTaskControler.currentshorttasks[0].hidefreq,
                    freq: currentShortTaskControler.currentshorttasks[0].freq,
                    hidedur:
                        currentShortTaskControler.currentshorttasks[0].hidedur,
                    dur: currentShortTaskControler.currentshorttasks[0].dur,
                  )
                else
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(LocaleKeys.program.tr(),
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            Text(
                                currentShortTaskControler
                                    .currentshorttasks[0].program,
                                style: Theme.of(context).textTheme.displayLarge)
                          ],
                        ),
                      ),
                      AppDivider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: AppTextField(
                          isText: false,
                          title: LocaleKeys.setamplitudecond.tr() +
                              ' ' +
                              currentShortTaskControler
                                  .currentshorttasks[0].condition
                                  .toString(),
                          controller: amplcondCtrl,
                        ),
                      ),
                      AppDivider(),
                      !currentShortTaskControler.currentshorttasks[0].hidefreq
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(LocaleKeys.freq.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge),
                                  Text(
                                      currentShortTaskControler
                                          .currentshorttasks[0].freq
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge)
                                ],
                              ),
                            )
                          : Container(),
                      !currentShortTaskControler.currentshorttasks[0].hidefreq
                          ? AppDivider()
                          : Container(),
                      !currentShortTaskControler.currentshorttasks[0].hidedur
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(LocaleKeys.dur.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge),
                                  Text(
                                      currentShortTaskControler
                                          .currentshorttasks[0].freq
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge)
                                ],
                              ),
                            )
                          : Container(),
                      !currentShortTaskControler.currentshorttasks[0].hidedur
                          ? AppDivider()
                          : Container(),
                    ],
                  ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      currentShortTaskControler
                          .addStartTestTimeShortTask(DateTime.now());
                      addconditionamp(
                          currentShortTaskControler,
                          amplcondCtrl,
                          _position,
                          _shorttaskmovecontroller,
                          context,
                          _shorttaskseatcontroller,
                          _shorttaskliecontroller);
                    },
                    child: Text(
                      LocaleKeys.begintest.tr(),
                      style: Theme.of(context).textTheme.labelLarge,
                    )),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        );
      }),
    );
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
