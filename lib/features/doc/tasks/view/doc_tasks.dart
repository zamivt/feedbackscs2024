import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../patient/controllers/patient_controller.dart';
import '../widgets/combination_tasks.dart';
import '../widgets/shorttasks/short_task.dart';

class DocTasks extends StatelessWidget {
  const DocTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            LocaleKeys.tasks.tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: SingleChildScrollView(
          child: GetBuilder(builder: (PatientController patientController) {
            return patientController.patients.isNotEmpty
                ? Column(
                    children: [ShortTasks(), LongTasks(), CombinationTasks()],
                  )
                : Container(
                    height: 400,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.secondary,
                    child: Center(
                        child: Text(
                      LocaleKeys.nodata.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    )));
          }),
        ));
  }
}
