// ignore_for_file: unused_local_variable

import 'package:badges/badges.dart' as badges;
import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/collections/shorttest.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../collections/longtest.dart';
import '../../../../../collections/patient.dart';
import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';

class Stage1_2 extends StatelessWidget {
  const Stage1_2({super.key});

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

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
              ShortTaskTable(context),
            ],
          ),
        ),
      ),
      LongTaskTable(
        context,
      )
    ]);
  }

  Padding LongTaskTable(
    BuildContext context,
  ) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    List<ILongTest> undefmovelongTest = feedbackSCSDatabase.undefmovelongTest;
    List<ILongTest> undefseatlongTest = feedbackSCSDatabase.undefseatlongTest;
    List<ILongTest> undeflielongTest = feedbackSCSDatabase.undeflielongTest;

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
                              undefmovelongTest.length.toString(),
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
                        (undefmovelongTest.length == 0)
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
                                      createNewLongCurrentTask(context);
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
                              undefseatlongTest.length.toString(),
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
                        (undefseatlongTest.length == 0)
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
                                      createNewLongCurrentTask(context);
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
                            undeflielongTest.length.toString(),
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
                        (undeflielongTest.length == 0)
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
                                      createNewLongCurrentTask(context);
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
    BuildContext context,
  ) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    List<IShortTest> undefmoveshortTest =
        feedbackSCSDatabase.undefmoveshortTest;
    List<IShortTest> undefseatshortTest =
        feedbackSCSDatabase.undefseatshortTest;
    List<IShortTest> undeflieshortTest = feedbackSCSDatabase.undeflieshortTest;
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
                      undefmoveshortTest.length.toString(),
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
                (undefmoveshortTest.length == 0)
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
                              createNewShortCurrentTask(context);
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
                      undefseatshortTest.length.toString(),
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
                (undefseatshortTest.length == 0)
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
                              createNewShortCurrentTask(context);
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
                    undeflieshortTest.toString(),
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
                (undeflieshortTest.length == 0)
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
                              createNewShortCurrentTask(context);
                            },
                            icon: Icon(Icons.add_task))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void createNewShortCurrentTask(context) {
    // _currentShortTaskControler.clearcurrentTaskShort();
    // late int index;
    // _candidateShortTaskMoveController.candidateshorttaskmoves.length > 1
    //     ? {
    //         index = Random().nextInt(_candidateShortTaskMoveController
    //             .candidateshorttaskmoves.length)
    //       }
    //     : _candidateShortTaskMoveController.candidateshorttaskmoves.length == 1
    //         ? {index = 0}
    //         : {
    //             index = 0,
    //           };

    // _currentShortTaskControler.addCurrentShortTask(
    //     LocaleKeys.cmove.tr().toString(),
    //     _candidateShortTaskMoveController.candidateshorttaskmoves[index].id
    //         .toString());

    // _candidateShortTaskMoveController.deleteCandidateShortTaskMove(index);

    // String newactivetask;
    // context.read<FeedbackSCSDatabase>().updateActiveTask('st1');
    // context.pushNamed(RouteNames.shorttest1);
  }
  void createNewLongCurrentTask(context) {
    // _currentShortTaskControler.clearcurrentTaskShort();
    // late int index;
    // _candidateShortTaskMoveController.candidateshorttaskmoves.length > 1
    //     ? {
    //         index = Random().nextInt(_candidateShortTaskMoveController
    //             .candidateshorttaskmoves.length)
    //       }
    //     : _candidateShortTaskMoveController.candidateshorttaskmoves.length == 1
    //         ? {index = 0}
    //         : {
    //             index = 0,
    //           };

    // _currentShortTaskControler.addCurrentShortTask(
    //     LocaleKeys.cmove.tr().toString(),
    //     _candidateShortTaskMoveController.candidateshorttaskmoves[index].id
    //         .toString());

    // _candidateShortTaskMoveController.deleteCandidateShortTaskMove(index);

    // String newactivetask;
    // context.read<FeedbackSCSDatabase>().updateActiveTask('st1');
    // context.pushNamed(RouteNames.shorttest1);
  }
}
