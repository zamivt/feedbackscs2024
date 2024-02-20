import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../../../../../../../services/entities/data/test_const.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/current_patient_provider.dart';

class PatientEditPriorityShorttest extends StatefulWidget {
  const PatientEditPriorityShorttest({super.key});

  @override
  State<PatientEditPriorityShorttest> createState() =>
      _PatientEditPriorityShorttestState();
}

class _PatientEditPriorityShorttestState
    extends State<PatientEditPriorityShorttest> {
  final _formKey = GlobalKey<FormState>();

  late String newpriorityshorttest;
  bool _issumcrit = false;

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
                child: Text(choicesol[1],
                    style: TextStyle(
                        fontSize: 16,
                        color: _issumcrit ? Colors.black : Colors.blue))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Transform.scale(
                scale: 1,
                child: Switch(
                  value: _issumcrit,
                  onChanged: (value) {
                    setState(() {
                      _issumcrit = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
                child: Text(
              choicesol[0],
              style: TextStyle(
                  fontSize: 16, color: _issumcrit ? Colors.blue : Colors.grey),
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
              context.read<CurrentPatientProvider>().updatePriorityshorttes(
                    newpriorityshorttest =
                        _issumcrit ? choicesol[0] : choicesol[1],
                  );
              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.save.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ],
    );
  }
}
