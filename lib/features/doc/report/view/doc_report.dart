import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_color_container.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_divider.dart';
import 'package:feedbackscs2024/features/doc/report/excellreport.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'package:provider/provider.dart';
import '../../../../collections/patient.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/current_patient_provider.dart';

class DocReport extends StatelessWidget {
  const DocReport({super.key});

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<CurrentPatientProvider>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
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
        body: currentpatient.isNotEmpty
            ? Column(children: [
                const Padding(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: ExcelReport()),
                const AppDivider(),
                AppColorContainer(
                    color: Theme.of(context).colorScheme.secondary,
                    headerbloc: LocaleKeys.shorttest.tr(),
                    widget: const Column(
                      children: [],
                    )),
                AppColorContainer(
                    color: Theme.of(context).colorScheme.tertiary,
                    headerbloc: LocaleKeys.longtest.tr(),
                    widget: const Column(
                      children: [],
                    )),
              ])
            : SizedBox(
                width: double.infinity,
                height: 400,
                child: Center(
                  child: Text(
                    LocaleKeys.nodata.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ));
  }
}
