// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../../collections/patient.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';

class PatientEditLevelMaxPain extends StatefulWidget {
  const PatientEditLevelMaxPain({super.key});

  @override
  State<PatientEditLevelMaxPain> createState() =>
      _PatientEditLevelMaxPainState();
}

class _PatientEditLevelMaxPainState extends State<PatientEditLevelMaxPain> {
  final _formKey = GlobalKey<FormState>();

  late int _newlevelmaxpain;

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
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
                  .read<FeedbackSCSDatabase>()
                  .updateMaxlevelpain(_newlevelmaxpain);

              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.save.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ],
      title: Text(LocaleKeys.changelevelmaxpain.tr()),
      titleTextStyle: Theme.of(context).textTheme.labelMedium,
      content: Form(
        key: _formKey,
        child: TextFormField(
          onSaved: (value) => _newlevelmaxpain = int.tryParse(value!)!,
          minLines: 1,
          maxLines: 6,
          initialValue: currentpatient[0].levelmaxpain.toString(),
        ),
      ),
    );
  }
}
