// ignore_for_file: unused_field
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../../../services/entities/data/neuromodels.dart';
import '../../../../collections/patient.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';

class PatientEditModelNeuro extends StatefulWidget {
  const PatientEditModelNeuro({super.key});

  @override
  State<PatientEditModelNeuro> createState() => _PatientEditModelNeuroState();
}

class _PatientEditModelNeuroState extends State<PatientEditModelNeuro> {
  final _formKey = GlobalKey<FormState>();
  final modelneuro = neuromodels.map((e) => e.model);

  String _modelneuro = '-';

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

              context.read<FeedbackSCSDatabase>().updateModelneuro(_modelneuro);

              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.save.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ],
      title: Text(LocaleKeys.changeneuro.tr()),
      titleTextStyle: Theme.of(context).textTheme.labelMedium,
      content: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: DropdownButtonHideUnderline(
                child: DropdownButtonFormField<String>(
                  style: Theme.of(context).textTheme.displayLarge,
                  dropdownColor: Theme.of(context).colorScheme.background,
                  isExpanded: true,
                  iconSize: 24,
                  value: currentpatient[0].modelneuro,
                  items: modelneuro.map(bildMenuNeuro).toList(),
                  onChanged: (String? value) =>
                      setState(() => _modelneuro = value!),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> bildMenuNeuro(String neuro) => DropdownMenuItem(
        value: neuro,
        child: Text(
          neuro,
        ),
      );
}
