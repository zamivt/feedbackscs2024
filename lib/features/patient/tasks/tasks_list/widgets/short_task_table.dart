import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import '../../../../../collections/patient.dart';
import '../../../../../collections/shorttest.dart';
import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';

class ShortTaskTable extends StatelessWidget {
  const ShortTaskTable({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readundefShortTestSeat();
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readundefShortTestMove();

    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readundefShortTestLie();
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
                    undeflieshortTest.length.toString(),
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
