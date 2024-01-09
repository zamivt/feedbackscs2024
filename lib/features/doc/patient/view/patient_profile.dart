import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/short_task_move_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import '../../../../core/ui/widgets/app_name_field.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../tasks/controllers/short_task_lie_controller.dart';
import '../../tasks/controllers/short_task_seat_controller.dart';
import '../controllers/patient_controller.dart';
import '../widgets/patient_edit_anamnez.dart';
import '../widgets/patient_edit_diagnoz.dart';
import '../widgets/patient_edit_email.dart';
import '../widgets/patient_edit_levelmaxpain.dart';
import '../widgets/patient_edit_modelneuro.dart';
import '../widgets/patient_edit_name.dart';
import '../widgets/patient_edit_phone.dart';
import '../widgets/patient_edit_priorityshortesttest.dart';
import '../widgets/patient_edit_sex.dart';
import '../widgets/patient_edit_stage.dart';
import '../widgets/patient_edit_timelie.dart';
import '../widgets/patient_edit_timemove.dart';
import '../widgets/patient_edit_timeseat.dart';
import '../widgets/patient_symptoms1.dart';
import '../widgets/patient_symptoms2.dart';
import '../widgets/patient_symptoms3.dart';

class PatientProfile extends StatelessWidget {
  PatientProfile({
    super.key,
  });

  final _shorttaskmoveController = Get.find<ShortTaskMoveControler>();
  final _shorttaskseatController = Get.find<ShortTaskSeatControler>();
  final _shorttasklieController = Get.find<ShortTaskLieControler>();

  Widget build(BuildContext context) {
    int _countask = _shorttasklieController.shorttasklies.length +
        _shorttaskmoveController.shorttaskmoves.length +
        _shorttaskseatController.shorttaskseats.length;
    return GetBuilder(builder: (PatientController patientController) {
      return Container(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            AppColorContainer(
                color: Theme.of(context).colorScheme.primary,
                headerbloc: LocaleKeys.patient.tr(),
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppNameField(namefield: LocaleKeys.fiopatient.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients.isNotEmpty
                                  ? patientController.patients[0].fio
                                  : '-',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    isDismissible: true,
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
                    ),
                    AppNameField(namefield: LocaleKeys.sex.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients.isNotEmpty
                                  ? patientController.patients[0].sex
                                  : '-',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    isDismissible: true,
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
                    ),
                    AppNameField(namefield: LocaleKeys.email.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients.isNotEmpty
                                  ? patientController.patients[0].email
                                  : '-',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    isDismissible: true,
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
                    ),
                    AppNameField(namefield: LocaleKeys.phone.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients.isNotEmpty
                                  ? patientController.patients[0].phone
                                  : '',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    isDismissible: true,
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
                    ),
                    AppNameField(namefield: LocaleKeys.diagnoz.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients.isNotEmpty
                                  ? patientController.patients[0].diagnoz
                                  : '',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    isDismissible: true,
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
                    AppNameField(namefield: LocaleKeys.anamnesis.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients.isNotEmpty
                                  ? patientController.patients[0].anamnez
                                  : '',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    isDismissible: true,
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
                    AppNameField(namefield: LocaleKeys.currentpainlevel.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients.isNotEmpty
                                  ? patientController.patients[0].levelmaxpain
                                      .toString()
                                  : '',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          (_countask > 0)
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) {
                                          return const PatientEditLevelMaxPain();
                                        });
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ))
                        ],
                      ),
                    ),
                    AppNameField(namefield: LocaleKeys.currentsymptoms.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              '1. ' + patientController.patients[0].sympotoms1,
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          (_countask > 0)
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) {
                                          return const PatientEditSymptoms1();
                                        });
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ))
                        ],
                      ),
                    ),
                    const ColoredBox(color: Colors.white, child: AppDivider()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              '2. ' + patientController.patients[0].sympotoms2,
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          (_countask > 0)
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) {
                                          return const PatientEditSymptoms2();
                                        });
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ))
                        ],
                      ),
                    ),
                    const ColoredBox(color: Colors.white, child: AppDivider()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              '3. ' +
                                  patientController.patients[0].sympotoms3
                                      .toString(),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          (_countask > 0)
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) {
                                          return const PatientEditSymptoms3();
                                        });
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ))
                        ],
                      ),
                    ),
                  ],
                )),
            AppColorContainer(
              color: Theme.of(context).colorScheme.tertiary,
              headerbloc: LocaleKeys.neurostim.tr(),
              widget: Column(
                children: [
                  AppNameField(namefield: LocaleKeys.modelneuro.tr()),
                  ColoredBox(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            patientController.patients[0].modelneuro,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        (_countask > 0)
                            ? Container()
                            : IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      isDismissible: true,
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
                color: Theme.of(context).colorScheme.secondary,
                headerbloc: LocaleKeys.desioncriteria.tr(),
                widget: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      color: Theme.of(context).colorScheme.primaryContainer,
                      child: Text(LocaleKeys.shorttest.tr(),
                          style: Theme.of(context).textTheme.labelLarge),
                    ),
                    const AppDivider(),
                    AppNameField(namefield: LocaleKeys.prioritychoice.tr()),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients[0].priorityshorttest,
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    isDismissible: true,
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
                      color: Colors.white,
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
                              patientController.patients[0].timemove
                                      .toString() +
                                  " " +
                                  LocaleKeys.hours.tr(),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          (_countask > 0)
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) {
                                          return const PatientEditTimeMove();
                                        });
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ))
                        ],
                      ),
                    ),
                    const AppDivider(),
                    ColoredBox(
                      color: Colors.white,
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
                              patientController.patients[0].timeseat
                                      .toString() +
                                  LocaleKeys.hours.tr(),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          (_countask > 0)
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) {
                                          return const PatientEditTimeSeat();
                                        });
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ))
                        ],
                      ),
                    ),
                    const AppDivider(),
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
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
                              patientController.patients[0].timelie.toString() +
                                  ' ' +
                                  LocaleKeys.hours.tr(),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          (_countask > 0)
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) {
                                          return const PatientEditTimeLie();
                                        });
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ))
                        ],
                      ),
                    ),
                    const AppDivider(),
                  ],
                )),
            AppColorContainer(
                color: Theme.of(context).colorScheme.tertiary,
                headerbloc: LocaleKeys.testingstage.tr(),
                widget: Column(
                  children: [
                    ColoredBox(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              patientController.patients[0].teststage
                                  .toString(),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                          (_countask > 0)
                              ? Container()
                              : IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isDismissible: true,
                                        context: context,
                                        builder: (context) {
                                          return const PatientEditStage();
                                        });
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ))
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      );
    });
  }
}
