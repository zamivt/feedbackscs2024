// ignore_for_file: unused_local_variable

import 'dart:math';
import 'package:badges/badges.dart' as badges;
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../collections/patient.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';
import '../../../../doc/tasks/controllers/candidate_short_task_lie_controller.dart';
import '../../../../doc/tasks/controllers/candidate_short_task_move_controller.dart';
import '../../../../doc/tasks/controllers/candidate_short_task_seat_controller.dart';
import '../../longtest/controllers/candidate_long_lie.dart';
import '../../longtest/controllers/candidate_long_move.dart';
import '../../longtest/controllers/candidate_long_seat.dart';
import '../../longtest/controllers/current_long__controller.dart';
import '../../shorttest/controllers/current_short_controller.dart';

class Stage1_2 extends StatelessWidget {
  const Stage1_2({super.key});

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

    final _currentShortTaskControler = Get.find<CurrentShortTaskControler>();
    final _currentLongTaskControler = Get.find<CurrentLongTaskControler>();
    final _candidateShortTaskMoveController =
        Get.find<CandidateShortTaskMoveControler>();
    final _candidateShortTaskSeatController =
        Get.find<CandidateShortTaskSeatControler>();
    final _candidateShortTaskLieController =
        Get.find<CandidateShortTaskLieControler>();
    final _candidatelongTaskMoveControler =
        Get.find<CandidateLongTaskMoveControler>();
    final _candidatelongTaskSeatControler =
        Get.find<CandidateLongTaskSeatControler>();
    var find = Get.find<CandidateLongTaskLieControler>();
    final _candidatelongTaskLieControler = find;

    return Column(children: [
      Container(
        width: double.infinity,
        height: 40,
        alignment: Alignment.center,
        color: Theme.of(context).colorScheme.primary,
        child: Text(
          LocaleKeys.dayactivity.tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: AppColorContainer(
          isminpadding: true,
          color: Theme.of(context).colorScheme.secondary,
          headerbloc: LocaleKeys.shorttest.tr(),
          widget: Column(
            children: [
              ShortTaskTable(
                  _candidateShortTaskMoveController,
                  context,
                  _currentShortTaskControler,
                  _candidateShortTaskSeatController,
                  _candidateShortTaskLieController),
            ],
          ),
        ),
      ),
      LongTaskTable(
          context,
          _candidatelongTaskMoveControler,
          _candidateShortTaskMoveController,
          _currentShortTaskControler,
          _candidatelongTaskMoveControler,
          _candidateShortTaskSeatController,
          _candidatelongTaskLieControler,
          _candidateShortTaskLieController)
    ]);
  }

  Padding LongTaskTable(
      BuildContext context,
      CandidateLongTaskMoveControler _candidatelongTaskMoveControler,
      CandidateShortTaskMoveControler _candidateShortTaskMoveController,
      CurrentShortTaskControler _currentShortTaskControler,
      CandidateLongTaskMoveControler _candidatelongTaskNoveControler,
      CandidateShortTaskSeatControler _candidateShortTaskSeatController,
      CandidateLongTaskLieControler _candidatelongTaskLieControler,
      CandidateShortTaskLieControler _candidateShortTaskLieController) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AppColorContainer(
        color: Theme.of(context).colorScheme.tertiary,
        isminpadding: true,
        headerbloc: LocaleKeys.longtest.tr(),
        widget: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary)),
                    child: Column(
                      children: [
                        badges.Badge(
                            badgeContent: Text(
                              _candidatelongTaskMoveControler
                                  .candidatelongtaskmoves.length
                                  .toString(),
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            badgeStyle: badges.BadgeStyle(
                              shape: badges.BadgeShape.square,
                              badgeColor:
                                  Theme.of(context).colorScheme.surfaceTint,
                              padding: EdgeInsets.all(5),
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2),
                              elevation: 0,
                            ),
                            child: Container(
                                height: 70,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground)),
                                child: Image.asset(
                                    currentpatient[0].sex == LocaleKeys.fem.tr()
                                        ? AppImages.happymovemen
                                        : AppImages.happymovemen))),
                        Container(
                          width: 100,
                          color: Theme.of(context).colorScheme.secondary,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            LocaleKeys.cmove.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        (_candidateShortTaskMoveController
                                    .candidateshorttaskmoves.length ==
                                0)
                            ? Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0)),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  shape: BoxShape.rectangle,
                                ),
                              )
                            : Container(
                                width: 100,
                                height: 40,
                                color: Theme.of(context).colorScheme.primary,
                                child: IconButton(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    onPressed: () {
                                      _currentShortTaskControler
                                          .clearcurrentTaskShort();
                                      late int index;
                                      _candidateShortTaskMoveController
                                                  .candidateshorttaskmoves
                                                  .length >
                                              1
                                          ? {
                                              index = Random().nextInt(
                                                  _candidateShortTaskMoveController
                                                      .candidateshorttaskmoves
                                                      .length)
                                            }
                                          : _candidateShortTaskMoveController
                                                      .candidateshorttaskmoves
                                                      .length ==
                                                  1
                                              ? {index = 0}
                                              : {
                                                  index = 0,
                                                };

                                      _currentShortTaskControler
                                          .addCurrentShortTask(
                                              LocaleKeys.cmove.tr().toString(),
                                              _candidateShortTaskMoveController
                                                  .candidateshorttaskmoves[
                                                      index]
                                                  .id
                                                  .toString());

                                      _candidateShortTaskMoveController
                                          .deleteCandidateShortTaskMove(index);

                                      String newactivetask;
                                      context
                                          .read<FeedbackSCSDatabase>()
                                          .updateActiveTask('st1');
                                      context.pushNamed(RouteNames.shorttest1);
                                    },
                                    icon: Icon(Icons.add_task))),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary)),
                    child: Column(
                      children: [
                        badges.Badge(
                            badgeContent: Text(
                              _candidateShortTaskSeatController
                                  .candidateshorttaskseats.length
                                  .toString(),
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            badgeStyle: badges.BadgeStyle(
                              shape: badges.BadgeShape.square,
                              badgeColor:
                                  Theme.of(context).colorScheme.surfaceTint,
                              padding: EdgeInsets.all(5),
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 2),
                              elevation: 0,
                            ),
                            child: Container(
                                height: 70,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground)),
                                child: Image.asset(
                                    currentpatient[0].sex == LocaleKeys.fem.tr()
                                        ? AppImages.happyseatwomen
                                        : AppImages.happyseatmen))),
                        Container(
                          width: 100,
                          color: Theme.of(context).colorScheme.secondary,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            LocaleKeys.cseat.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        (_candidateShortTaskSeatController
                                    .candidateshorttaskseats.length ==
                                0)
                            ? Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0)),
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  shape: BoxShape.rectangle,
                                ),
                              )
                            : Container(
                                width: 100,
                                height: 40,
                                color: Theme.of(context).colorScheme.primary,
                                child: IconButton(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    onPressed: () {
                                      _currentShortTaskControler
                                          .clearcurrentTaskShort();
                                      late int index;
                                      _candidateShortTaskSeatController
                                                  .candidateshorttaskseats
                                                  .length >
                                              1
                                          ? {
                                              index = Random().nextInt(
                                                  _candidateShortTaskSeatController
                                                      .candidateshorttaskseats
                                                      .length)
                                            }
                                          : _candidateShortTaskSeatController
                                                      .candidateshorttaskseats
                                                      .length ==
                                                  1
                                              ? {index = 0}
                                              : {
                                                  index = 0,
                                                };

                                      _currentShortTaskControler
                                          .addCurrentShortTask(
                                              LocaleKeys.cseat.tr().toString(),
                                              _candidateShortTaskSeatController
                                                  .candidateshorttaskseats[
                                                      index]
                                                  .id
                                                  .toString());

                                      _candidateShortTaskSeatController
                                          .deleteCandidateShortTaskSeat(index);

                                      String newactivetask;
                                      context
                                          .read<FeedbackSCSDatabase>()
                                          .updateActiveTask('st1');
                                      context.pushNamed(RouteNames.shorttest1);
                                    },
                                    icon: Icon(Icons.add_task))),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary)),
                    child: Column(
                      children: [
                        badges.Badge(
                          badgeContent: Text(
                            _candidatelongTaskLieControler
                                .candidatelongtasklies.length
                                .toString(),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          badgeStyle: badges.BadgeStyle(
                            shape: badges.BadgeShape.square,
                            badgeColor:
                                Theme.of(context).colorScheme.surfaceTint,
                            padding: EdgeInsets.all(5),
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2),
                            elevation: 0,
                          ),
                          child: Container(
                              height: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0)),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground)),
                              child: Image.asset(
                                  currentpatient[0].sex == LocaleKeys.fem.tr()
                                      ? AppImages.happysleepwomen
                                      : AppImages.happysleepmen)),
                        ),
                        Container(
                          width: 100,
                          color: Theme.of(context).colorScheme.secondary,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            LocaleKeys.clie.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        (_candidateShortTaskLieController
                                    .candidateshorttasklies.length ==
                                0)
                            ? Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(0)),
                                  shape: BoxShape.rectangle,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              )
                            : Container(
                                width: 100,
                                height: 40,
                                color: Theme.of(context).colorScheme.primary,
                                child: IconButton(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    onPressed: () {
                                      _currentShortTaskControler
                                          .clearcurrentTaskShort();
                                      late int index;
                                      _candidateShortTaskLieController
                                                  .candidateshorttasklies
                                                  .length >
                                              1
                                          ? {
                                              index = Random().nextInt(
                                                  _candidateShortTaskLieController
                                                      .candidateshorttasklies
                                                      .length)
                                            }
                                          : _candidateShortTaskLieController
                                                      .candidateshorttasklies
                                                      .length ==
                                                  1
                                              ? {index = 0}
                                              : {
                                                  index = 0,
                                                };

                                      _currentShortTaskControler
                                          .addCurrentShortTask(
                                              LocaleKeys.clie.tr().toString(),
                                              _candidateShortTaskLieController
                                                  .candidateshorttasklies[index]
                                                  .id
                                                  .toString());

                                      _candidateShortTaskLieController
                                          .deleteCandidateShortTaskLie(index);

                                      String newactivetask;
                                      context
                                          .read<FeedbackSCSDatabase>()
                                          .updateActiveTask('st1');
                                      context.pushNamed(RouteNames.shorttest1);
                                    },
                                    icon: Icon(Icons.add_task))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding ShortTaskTable(
      CandidateShortTaskMoveControler _candidateShortTaskMoveController,
      BuildContext context,
      CurrentShortTaskControler _currentShortTaskControler,
      CandidateShortTaskSeatControler _candidateShortTaskSeatController,
      CandidateShortTaskLieControler _candidateShortTaskLieController) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.primary)),
            child: Column(
              children: [
                badges.Badge(
                    badgeContent: Text(
                      _candidateShortTaskMoveController
                          .candidateshorttaskmoves.length
                          .toString(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    badgeStyle: badges.BadgeStyle(
                      shape: badges.BadgeShape.square,
                      badgeColor: Theme.of(context).colorScheme.surfaceTint,
                      padding: EdgeInsets.all(5),
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2),
                      elevation: 0,
                    ),
                    child: Container(
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground)),
                        child: Image.asset(
                            currentpatient[0].sex == LocaleKeys.fem.tr()
                                ? AppImages.painmovewomen
                                : AppImages.painmovemen))),
                Container(
                  width: 100,
                  color: Theme.of(context).colorScheme.tertiary,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    LocaleKeys.cmove.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                (_candidateShortTaskMoveController
                            .candidateshorttaskmoves.length ==
                        0)
                    ? Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          shape: BoxShape.rectangle,
                        ),
                      )
                    : Container(
                        width: 100,
                        height: 40,
                        color: Theme.of(context).colorScheme.primary,
                        child: IconButton(
                            color: Theme.of(context).colorScheme.onBackground,
                            onPressed: () {
                              createNewCurrentTask(_currentShortTaskControler,
                                  _candidateShortTaskMoveController, context);
                            },
                            icon: Icon(Icons.add_task))),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
            ),
            child: Column(
              children: [
                badges.Badge(
                    badgeContent: Text(
                      _candidateShortTaskSeatController
                          .candidateshorttaskseats.length
                          .toString(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    badgeStyle: badges.BadgeStyle(
                      shape: badges.BadgeShape.square,
                      badgeColor: Theme.of(context).colorScheme.surfaceTint,
                      padding: EdgeInsets.all(5),
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2),
                      elevation: 0,
                    ),
                    child: Container(
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground)),
                        child: Image.asset(
                            currentpatient[0].sex == LocaleKeys.fem.tr()
                                ? AppImages.painseatwomen
                                : AppImages.painseatmen))),
                Container(
                  width: 100,
                  color: Theme.of(context).colorScheme.tertiary,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    LocaleKeys.cseat.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                (_candidateShortTaskSeatController
                            .candidateshorttaskseats.length ==
                        0)
                    ? Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          shape: BoxShape.rectangle,
                        ),
                      )
                    : Container(
                        width: 100,
                        height: 40,
                        color: Theme.of(context).colorScheme.primary,
                        child: IconButton(
                            color: Theme.of(context).colorScheme.onBackground,
                            onPressed: () {
                              _currentShortTaskControler
                                  .clearcurrentTaskShort();
                              late int index;
                              _candidateShortTaskSeatController
                                          .candidateshorttaskseats.length >
                                      1
                                  ? {
                                      index = Random().nextInt(
                                          _candidateShortTaskSeatController
                                              .candidateshorttaskseats.length)
                                    }
                                  : _candidateShortTaskSeatController
                                              .candidateshorttaskseats.length ==
                                          1
                                      ? {index = 0}
                                      : {
                                          index = 0,
                                        };

                              _currentShortTaskControler.addCurrentShortTask(
                                  LocaleKeys.cseat.tr().toString(),
                                  _candidateShortTaskSeatController
                                      .candidateshorttaskseats[index].id
                                      .toString());

                              _candidateShortTaskSeatController
                                  .deleteCandidateShortTaskSeat(index);

                              String newactivetask;
                              context
                                  .read<FeedbackSCSDatabase>()
                                  .updateActiveTask('st1');
                              context.pushNamed(RouteNames.shorttest1);
                            },
                            icon: Icon(Icons.add_task))),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.primary)),
            child: Column(
              children: [
                badges.Badge(
                  badgeContent: Text(
                    _candidateShortTaskLieController
                        .candidateshorttasklies.length
                        .toString(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  badgeStyle: badges.BadgeStyle(
                    shape: badges.BadgeShape.square,
                    badgeColor: Theme.of(context).colorScheme.surfaceTint,
                    padding: EdgeInsets.all(5),
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary, width: 2),
                    elevation: 0,
                  ),
                  child: Container(
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              color:
                                  Theme.of(context).colorScheme.onBackground)),
                      child: Image.asset(
                          currentpatient[0].sex == LocaleKeys.fem.tr()
                              ? AppImages.painsleepwomen
                              : AppImages.painsleepmen)),
                ),
                Container(
                  width: 100,
                  color: Theme.of(context).colorScheme.tertiary,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    LocaleKeys.clie.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                (_candidateShortTaskLieController
                            .candidateshorttasklies.length ==
                        0)
                    ? Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          shape: BoxShape.rectangle,
                        ),
                      )
                    : Container(
                        width: 100,
                        height: 40,
                        color: Theme.of(context).colorScheme.primary,
                        child: IconButton(
                            color: Theme.of(context).colorScheme.onBackground,
                            onPressed: () {
                              _currentShortTaskControler
                                  .clearcurrentTaskShort();
                              late int index;
                              _candidateShortTaskLieController
                                          .candidateshorttasklies.length >
                                      1
                                  ? {
                                      index = Random().nextInt(
                                          _candidateShortTaskLieController
                                              .candidateshorttasklies.length)
                                    }
                                  : _candidateShortTaskLieController
                                              .candidateshorttasklies.length ==
                                          1
                                      ? {index = 0}
                                      : {
                                          index = 0,
                                        };

                              _currentShortTaskControler.addCurrentShortTask(
                                  LocaleKeys.clie.tr().toString(),
                                  _candidateShortTaskLieController
                                      .candidateshorttasklies[index].id
                                      .toString());

                              _candidateShortTaskLieController
                                  .deleteCandidateShortTaskLie(index);

                              String newactivetask;
                              context
                                  .read<FeedbackSCSDatabase>()
                                  .updateActiveTask('st1');
                              context.pushNamed(RouteNames.shorttest1);
                            },
                            icon: Icon(Icons.add_task))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void createNewCurrentTask(
      CurrentShortTaskControler _currentShortTaskControler,
      CandidateShortTaskMoveControler _candidateShortTaskMoveController,
      BuildContext context) {
    _currentShortTaskControler.clearcurrentTaskShort();
    late int index;
    _candidateShortTaskMoveController.candidateshorttaskmoves.length > 1
        ? {
            index = Random().nextInt(_candidateShortTaskMoveController
                .candidateshorttaskmoves.length)
          }
        : _candidateShortTaskMoveController.candidateshorttaskmoves.length == 1
            ? {index = 0}
            : {
                index = 0,
              };

    _currentShortTaskControler.addCurrentShortTask(
        LocaleKeys.cmove.tr().toString(),
        _candidateShortTaskMoveController.candidateshorttaskmoves[index].id
            .toString());

    _candidateShortTaskMoveController.deleteCandidateShortTaskMove(index);

    String newactivetask;
    context.read<FeedbackSCSDatabase>().updateActiveTask('st1');
    context.pushNamed(RouteNames.shorttest1);
  }
}
