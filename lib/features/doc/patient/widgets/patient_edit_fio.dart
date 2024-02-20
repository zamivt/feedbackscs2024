// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../collections/patient.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/current_patient_provider.dart';

class PatientEditFio extends StatefulWidget {
  const PatientEditFio({super.key});

  @override
  State<PatientEditFio> createState() => _PatientEditFioState();
}

class _PatientEditFioState extends State<PatientEditFio> {
  final _formKey = GlobalKey<FormState>();

  late String _newfio;

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

              context.read<CurrentPatientProvider>().updateFIO(_newfio);

              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.save.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ],
      title: Text(LocaleKeys.changename.tr()),
      titleTextStyle: Theme.of(context).textTheme.labelMedium,
      content: Form(
        key: _formKey,
        child: TextFormField(
          onSaved: (value) => _newfio = value!,
          minLines: 1,
          maxLines: 6,
          initialValue: currentpatient[0].fio,
        ),
      ),
    );
  }
}
