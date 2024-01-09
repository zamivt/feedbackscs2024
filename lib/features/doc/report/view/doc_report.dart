import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_color_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../patient/controllers/patient_controller.dart';

class DocReport extends StatelessWidget {
  const DocReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        automaticallyImplyLeading: F,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          LocaleKeys.report.tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: GetBuilder(builder: (PatientController patientController) {
        return patientController.patients.isNotEmpty
            ? Column(children: [
                AppColorContainer(
                    color: Theme.of(context).colorScheme.secondary,
                    headerbloc: LocaleKeys.shorttest.tr(),
                    widget: Column(
                      children: [],
                    )),
                AppColorContainer(
                    color: Theme.of(context).colorScheme.tertiary,
                    headerbloc: LocaleKeys.longtest.tr(),
                    widget: Column(
                      children: [],
                    ))
              ])
            : Container(
                width: double.infinity,
                height: 400,
                child: Center(
                  child: Text(
                    LocaleKeys.nodata.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              );
      }),
    );
  }
}
