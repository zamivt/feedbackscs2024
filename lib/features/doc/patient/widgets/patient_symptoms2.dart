// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../collections/patient.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/current_patient_provider.dart';

class PatientEditSymptoms2 extends StatefulWidget {
  const PatientEditSymptoms2({super.key});

  @override
  State<PatientEditSymptoms2> createState() => _PatientEditSymptoms2State();
}

class _PatientEditSymptoms2State extends State<PatientEditSymptoms2> {
  final _formKey = GlobalKey<FormState>();

  late String _newsymptoms2;
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
                  .updateSymptoms2(_newsymptoms2);

              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.save.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ],
      title: Text(LocaleKeys.changesymptoms2.tr()),
      titleTextStyle: Theme.of(context).textTheme.labelMedium,
      content: Form(
        key: _formKey,
        child: TextFormField(
          onSaved: (value) => _newsymptoms2 = value!,
          minLines: 1,
          maxLines: 6,
          initialValue: currentpatient[0].sympotoms2.toString(),
        ),
      ),
    );
  }
}
