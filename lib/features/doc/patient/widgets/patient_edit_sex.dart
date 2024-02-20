// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/current_patient_provider.dart';

class PatientEditSex extends StatefulWidget {
  const PatientEditSex({super.key});

  @override
  State<PatientEditSex> createState() => _PatientEditSexState();
}

class _PatientEditSexState extends State<PatientEditSex> {
  final _formKey = GlobalKey<FormState>();

  late String newsex;

  bool _ismale = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(LocaleKeys.changepriorityshorttest.tr()),
      titleTextStyle: Theme.of(context).textTheme.labelMedium,
      backgroundColor: Colors.grey.shade200,
      actionsOverflowButtonSpacing: 20,
      content: Form(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
                child: Text(LocaleKeys.fem.tr(),
                    style: TextStyle(
                        fontSize: 16,
                        color: _ismale ? Colors.black : Colors.blue))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Transform.scale(
                scale: 1,
                child: Switch(
                  value: _ismale,
                  onChanged: (value) {
                    setState(() {
                      _ismale = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
                child: Text(
              LocaleKeys.mal.tr(),
              style: TextStyle(
                  fontSize: 16, color: _ismale ? Colors.blue : Colors.grey),
              textAlign: TextAlign.right,
            )),
          ],
        ),
      ),
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
              context.read<CurrentPatientProvider>().updateSEX(
                    newsex =
                        _ismale ? LocaleKeys.mal.tr() : LocaleKeys.fem.tr(),
                  );
              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.save.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ],
    );
  }
}
