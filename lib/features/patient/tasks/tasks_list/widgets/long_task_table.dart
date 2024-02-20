import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/repository/long_test_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import '../../../../../collections/longtest.dart';
import '../../../../../collections/patient.dart';
import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/current_patient_provider.dart';

class LongTaskTable extends StatelessWidget {
  const LongTaskTable({super.key});

  @override
  Widget build(BuildContext context) {
    final longtestbase = context.watch<LongTestProvider>();
    final patientbase = context.watch<CurrentPatientProvider>();
    List<IPatient> currentpatient = patientbase.currentPatient;
    List<ILongTest> undefmovelongTest = longtestbase.undefmovelongTest;
    List<ILongTest> undefseatlongTest = longtestbase.undefseatlongTest;
    List<ILongTest> undeflielongTest = longtestbase.undeflielongTest;

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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(0)),
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
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            LocaleKeys.cmove.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        (undefmovelongTest.isEmpty)
                            ? Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)),
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
                                    icon: const Icon(Icons.add_task))),
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(0)),
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
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            LocaleKeys.cseat.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        (undefseatlongTest.isEmpty)
                            ? Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)),
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
                                    icon: const Icon(Icons.add_task))),
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)),
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
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            LocaleKeys.clie.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        (undeflielongTest.isEmpty)
                            ? Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(0)),
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
                                    icon: const Icon(Icons.add_task))),
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
