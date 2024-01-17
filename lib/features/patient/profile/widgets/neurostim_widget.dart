import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import '../../../../collections/patient.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';

Neurostimulator(context) {
  final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
  List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    child: AppColorContainer(
        headerbloc: LocaleKeys.neuro.tr(),
        color: Theme.of(context).colorScheme.secondary,
        widget: currentpatient.isEmpty
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
                      Text(currentpatient[0].modelneuro,
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
}
