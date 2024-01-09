import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../doc/patient/controllers/patient_controller.dart';

Neurostimulator(context) {
  return GetBuilder(builder: (PatientController patientController) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: AppColorContainer(
          headerbloc: LocaleKeys.neuro.tr(),
          color: Theme.of(context).colorScheme.secondary,
          widget: patientController.patients.isEmpty
              ? Text(
                  LocaleKeys.nodata.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge,
                )
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(LocaleKeys.model.tr(),
                            style: Theme.of(context).textTheme.titleSmall),
                        Text(patientController.patients[0].modelneuro,
                            style: Theme.of(context).textTheme.titleSmall),
                      ],
                    ),
                    AppDivider(),
                    AppTextButton(
                      text: LocaleKeys.instructionneuro.tr(),
                      linkbutton: RouteNames.neuroinst,
                    )
                  ],
                )),
    );
  });
}
