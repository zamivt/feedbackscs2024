import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../collections/patient.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';
import '../../../../services/entities/data/model/neuromodel.dart';
import '../../../../services/entities/data/neuromodels.dart';

class Neurostim extends StatelessWidget {
  const Neurostim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    Iterable<Neuro> liststimul = neuromodels.where((neuromodel) =>
        neuromodel.model.contains(currentpatient[0].modelneuro));
    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.surfaceTint,
      ),
      child: currentpatient.isEmpty
          ? SizedBox(
              width: double.infinity,
              height: 300,
              child: Center(
                  child: Text(
                LocaleKeys.nodata.tr(),
                style: Theme.of(context).textTheme.displayLarge,
              )),
            )
          : SizedBox(
              width: double.infinity - 100,
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.model.tr(),
                        style: Theme.of(context).textTheme.displayLarge),
                    Text(currentpatient[0].modelneuro,
                        style: Theme.of(context).textTheme.displayLarge),
                  ],
                ),
                const AppDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.amp.tr(),
                        style: Theme.of(context).textTheme.displayLarge),
                    Text(
                        '${liststimul.map((neumodel) => neumodel.minampl).toList().first} - ${liststimul.map((neumodel) => neumodel.maxampl).toList().first}',
                        style: Theme.of(context).textTheme.displayLarge),
                  ],
                ),
                const AppDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.freq.tr(),
                        style: Theme.of(context).textTheme.displayLarge),
                    Text(
                        '${liststimul.map((neumodel) => neumodel.minfreq).toList().first} -${liststimul.map((neumodel) => neumodel.maxfreq).toList().first}${LocaleKeys.hz.tr()}',
                        style: Theme.of(context).textTheme.displayLarge),
                  ],
                ),
                const AppDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.dur.tr(),
                        style: Theme.of(context).textTheme.displayLarge),
                    Text(
                        '${liststimul.map((neumodel) => neumodel.mindur).toList().first} - ${liststimul.map((neumodel) => neumodel.maxdur).toList().first} mcsec',
                        style: Theme.of(context).textTheme.displayLarge),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Theme.of(context).colorScheme.primary,
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: Text(LocaleKeys.instructions.tr(),
                      style: Theme.of(context).textTheme.labelLarge),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextButton(
                  text: LocaleKeys.instructionneuro.tr(),
                  linkbutton: RouteNames.neuroinst,
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
            ),
    ));
  }
}
