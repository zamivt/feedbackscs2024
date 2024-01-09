// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../../../../services/entities/data/test_const.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditStage extends StatefulWidget {
  const PatientEditStage({super.key});

  @override
  State<PatientEditStage> createState() => _PatientEditStageState();
}

class _PatientEditStageState extends State<PatientEditStage> {
  final _formKey = GlobalKey<FormState>();

  late String newstage;
  String _stage = '-';

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (PatientController patientController) {
      return Container(
        height: 250,
        color: Theme.of(context).colorScheme.tertiary,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Theme.of(context).colorScheme.primary,
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(LocaleKeys.changestage.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              Padding(
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
                            isExpanded: true,
                            iconSize: 24,
                            value: patientController.patients[0].teststage,
                            items: choiceteststage
                                .map(bildMenuchoiceteststage)
                                .toList(),
                            validator: (value) =>
                                (value == 'teststage') ? 'change stage' : null,
                            onChanged: (String? value) =>
                                setState(() => _stage = value!),
                          ),
                        ))),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController
                        .editchoiceteststagetPatient(newstage = _stage);
                    Navigator.of(context).pop();
                  },
                  child: Text(LocaleKeys.save.tr(),
                      style: Theme.of(context).textTheme.labelLarge))
            ],
          ),
        ),
      );
    });
  }

  DropdownMenuItem<String> bildMenuchoiceteststage(String choiceteststage) =>
      DropdownMenuItem(
        value: choiceteststage,
        child: Text(
          choiceteststage,
        ),
      );
}
