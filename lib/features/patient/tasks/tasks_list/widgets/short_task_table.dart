import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/repository/current_patient_provider.dart';
import 'package:feedbackscs2024/repository/current_test_provider.dart';
import 'package:feedbackscs2024/repository/short_test_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import '../../../../../collections/patient.dart';
import '../../../../../collections/shorttest.dart';
import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../l10n/locale_keys.g.dart';

class ShortTaskTable extends StatelessWidget {
  const ShortTaskTable({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ShortTestProvider>(context, listen: false)
        .readundefShortTestSeat();
    Provider.of<ShortTestProvider>(context, listen: false)
        .readundefShortTestMove();

    Provider.of<ShortTestProvider>(context, listen: false)
        .readundefShortTestLie();
    final currentpatientbase = context.watch<CurrentPatientProvider>();
    List<IPatient> currentpatient = currentpatientbase.currentPatient;
    final shorttestbase = context.watch<ShortTestProvider>();
    List<IShortTest> undefmoveshortTest = shorttestbase.undefmoveshortTest;

    List<IShortTest> undefseatshortTest = shorttestbase.undefseatshortTest;
    List<IShortTest> undeflieshortTest = shorttestbase.undeflieshortTest;

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
                      padding: const EdgeInsets.all(5),
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
                                const BorderRadius.all(Radius.circular(0)),
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
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    LocaleKeys.cmove.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                (undefmoveshortTest.isEmpty)
                    ? Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(0)),
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
                              newCurrentShortTestMove(context);
                            },
                            icon: const Icon(Icons.add_task))),
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
                      padding: const EdgeInsets.all(5),
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
                                const BorderRadius.all(Radius.circular(0)),
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
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    LocaleKeys.cseat.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                (undefseatshortTest.isEmpty)
                    ? Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(0)),
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
                              createNewShortSeatCurrentTask(context);
                            },
                            icon: const Icon(Icons.add_task))),
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
                    padding: const EdgeInsets.all(5),
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary, width: 2),
                    elevation: 0,
                  ),
                  child: Container(
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(0)),
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
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    LocaleKeys.clie.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                (undeflieshortTest.isEmpty)
                    ? Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(0)),
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
                              createNewShortLieCurrentTask(context);
                            },
                            icon: const Icon(Icons.add_task))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void newCurrentShortTestMove(BuildContext context) {
    Provider.of<ShortTestProvider>(context, listen: false)
        .readundefShortTestMove();
    final feedbackSCSDatabase = context.read<ShortTestProvider>();
    List<IShortTest> undefmoveshortTest =
        feedbackSCSDatabase.undefmoveshortTest;

    late int index;

    undefmoveshortTest.length > 1
        ? {index = Random().nextInt(undefmoveshortTest.length)}
        : undefmoveshortTest.length == 1
            ? {index = 0}
            : {
                index = 0,
              };

    int currentid = undefmoveshortTest[index].id;

    String position = LocaleKeys.cmove.tr();

    String program = undefmoveshortTest[index].program;
    String electrodes = undefmoveshortTest[index].electrodes;
    String condition = undefmoveshortTest[index].condition;
    double amplit = undefmoveshortTest[index].amplit!;
    bool hideamplt = undefmoveshortTest[index].hideamplt;
    int freq = undefmoveshortTest[index].freq;
    bool hidefreq = undefmoveshortTest[index].hidefreq;
    int dur = undefmoveshortTest[index].dur;
    bool hidedur = undefmoveshortTest[index].hidedur;
    context.read<CurrentTestProvider>().updatest0ShortTest(
        currentid,
        position,
        program,
        electrodes,
        condition,
        amplit,
        hideamplt,
        freq,
        hidefreq,
        dur,
        hidedur);

    context.read<CurrentTestProvider>().updateActiveTask('st1');
    //context.pushNamed(RouteNames.shorttest1);
  }
}

void createNewShortSeatCurrentTask(context) {}
void createNewShortLieCurrentTask(context) {}
