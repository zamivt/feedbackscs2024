// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../collections/patient.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/current_patient_provider.dart';

class PatientEditSymptoms3 extends StatefulWidget {
  const PatientEditSymptoms3({super.key});

  @override
  State<PatientEditSymptoms3> createState() => _PatientEditSymptoms3State();
}

class _PatientEditSymptoms3State extends State<PatientEditSymptoms3> {
  final _formKey = GlobalKey<FormState>();

  late String _newsymptoms3;
  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<CurrentPatientProvider>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    return AlertDialog(
      backgroundColor: Colors.grey.shade300,
      actionsOverflowButtonSpacing: 20,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.primary)),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.cancel.tr(),
                style: Theme.of(context).textTheme.labelLarge)),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.primary)),
            onPressed: () {
              _formKey.currentState?.save();

              context
                  .read<CurrentPatientProvider>()
                  .updateSymptoms3(_newsymptoms3);

              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.save.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ],
      title: Text(LocaleKeys.changesymptoms3.tr()),
      titleTextStyle: Theme.of(context).textTheme.labelMedium,
      content: Form(
        key: _formKey,
        child: TextFormField(
          onSaved: (value) => _newsymptoms3 = value!,
          minLines: 1,
          maxLines: 6,
          initialValue: currentpatient[0].sympotoms3.toString(),
        ),
      ),
    );
  }
}
