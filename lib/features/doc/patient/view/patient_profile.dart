import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../collections/patient.dart';
import '../../../../core/ui/widgets/app_name_field.dart';
import '../../../../core/ui/widgets/common_widgets.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';
import '../widgets/patient_edit_anamnez.dart';
import '../widgets/patient_edit_diagnoz.dart';
import '../widgets/patient_edit_email.dart';
import '../widgets/patient_edit_levelmaxpain.dart';
import '../widgets/patient_edit_modelneuro.dart';
import '../widgets/patient_edit_fio.dart';
import '../widgets/patient_edit_phone.dart';
import '../widgets/patient_edit_priorityshortesttest.dart';
import '../widgets/patient_edit_sex.dart';

import '../widgets/patient_edit_timelie.dart';
import '../widgets/patient_edit_timemove.dart';
import '../widgets/patient_edit_timeseat.dart';
import '../widgets/patient_symptoms1.dart';
import '../widgets/patient_symptoms2.dart';
import '../widgets/patient_symptoms3.dart';

class PatientProfile extends StatefulWidget {
  PatientProfile({
    super.key,
  });

  @override
  State<PatientProfile> createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  @override
  void initState() {
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readPatient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

    int countask = 0;
    return Container(
      color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          AppColorContainer(
              color: Colors.grey.shade200,
              headerbloc: LocaleKeys.patient.tr(),
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppNameField(namefield: LocaleKeys.fiopatient.tr()),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          currentpatient.isNotEmpty
                              ? currentpatient[0].fio
                              : '-',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const PatientEditFio();
                                });
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Theme.of(context).colorScheme.primary,
                          ))
                    ],
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppNameField(namefield: LocaleKeys.sex.tr()),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          currentpatient.isNotEmpty
                              ? currentpatient[0].sex
                              : '-',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const PatientEditSex();
                                });
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Theme.of(context).colorScheme.primary,
                          ))
                    ],
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppNameField(namefield: LocaleKeys.email.tr()),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          currentpatient.isNotEmpty
                              ? currentpatient[0].email
                              : '-',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const PatientEditEmail();
                                });
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Theme.of(context).colorScheme.primary,
                          ))
                    ],
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppNameField(namefield: LocaleKeys.phone.tr()),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          currentpatient.isNotEmpty
                              ? currentpatient[0].phone
                              : '',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const PatientEditPhone();
                                });
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Theme.of(context).colorScheme.primary,
                          ))
                    ],
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  AppNameField(namefield: LocaleKeys.diagnoz.tr()),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            currentpatient.isNotEmpty
                                ? currentpatient[0].diagnoz
                                : '',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const PatientEditDiagnoz();
                                  });
                            },
                            icon: Icon(
                              Icons.edit,
                              color: Theme.of(context).colorScheme.primary,
                            ))
                      ],
                    ),
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  AppNameField(namefield: LocaleKeys.anamnesis.tr()),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            currentpatient.isNotEmpty
                                ? currentpatient[0].anamnez
                                : '',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const PatientEditAnamnez();
                                  });
                            },
                            icon: Icon(
                              Icons.edit,
                              color: Theme.of(context).colorScheme.primary,
                            ))
                      ],
                    ),
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppNameField(
                            namefield: LocaleKeys.currentpainlevel.tr()),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            currentpatient.isNotEmpty
                                ? currentpatient[0].levelmaxpain.toString()
                                : '',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        (countask > 0)
                            ? Container()
                            : IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const PatientEditLevelMaxPain();
                                      });
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Theme.of(context).colorScheme.primary,
                                ))
                      ],
                    ),
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  AppNameField(namefield: LocaleKeys.currentsymptoms.tr()),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            '1. ${currentpatient[0].sympotoms1}',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        (countask > 0)
                            ? Container()
                            : IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const PatientEditSymptoms1();
                                      });
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Theme.of(context).colorScheme.primary,
                                ))
                      ],
                    ),
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            '2. ${currentpatient[0].sympotoms2}',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        (countask > 0)
                            ? Container()
                            : IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const PatientEditSymptoms2();
                                      });
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Theme.of(context).colorScheme.primary,
                                ))
                      ],
                    ),
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            '3. ${currentpatient[0].sympotoms3}',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        (countask > 0)
                            ? Container()
                            : IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const PatientEditSymptoms3();
                                      });
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Theme.of(context).colorScheme.primary,
                                ))
                      ],
                    ),
                  ),
                ],
              )),
          AppColorContainer(
            color: Colors.grey.shade200,
            headerbloc: LocaleKeys.neurostim.tr(),
            widget: Column(
              children: [
                AppNameField(namefield: LocaleKeys.modelneuro.tr()),
                ColoredBox(
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          currentpatient[0].modelneuro,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      (countask > 0)
                          ? Container()
                          : IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const PatientEditModelNeuro();
                                    });
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Theme.of(context).colorScheme.primary,
                              ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          AppColorContainer(
              color: Colors.grey.shade200,
              headerbloc: LocaleKeys.desioncriteria.tr(),
              widget: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: Text(LocaleKeys.shorttest.tr(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge),
                  ),
                  const AppDivider(),
                  AppNameField(namefield: LocaleKeys.prioritychoice.tr()),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            currentpatient[0].priorityshorttest,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const PatientEditPriorityShorttest();
                                  });
                            },
                            icon: Icon(
                              Icons.edit,
                              color: Theme.of(context).colorScheme.primary,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: Text(LocaleKeys.longtest.tr(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelLarge),
                  ),
                  AppCommentText(text: LocaleKeys.maxtimeposition.tr()),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            LocaleKeys.cmove.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "${currentpatient[0].timemove} ${LocaleKeys.hours.tr()}",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        (countask > 0)
                            ? Container()
                            : IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const PatientEditTimeMove();
                                      });
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Theme.of(context).colorScheme.primary,
                                ))
                      ],
                    ),
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  ColoredBox(
                    color: Colors.grey.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            LocaleKeys.cseat.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            currentpatient[0].timeseat.toString() +
                                LocaleKeys.hours.tr(),
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        (countask > 0)
                            ? Container()
                            : IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const PatientEditTimeSeat();
                                      });
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Theme.of(context).colorScheme.primary,
                                ))
                      ],
                    ),
                  ),
                  const AppDivider(
                    ismin: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          LocaleKeys.clie.tr(),
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '${currentpatient[0].timelie} ${LocaleKeys.hours.tr()}',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      (countask > 0)
                          ? Container()
                          : IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const PatientEditTimeLie();
                                    });
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Theme.of(context).colorScheme.primary,
                              ))
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
