// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditSymptoms2 extends StatefulWidget {
  const PatientEditSymptoms2({super.key});

  @override
  State<PatientEditSymptoms2> createState() => _PatientEditSymptoms2State();
}

class _PatientEditSymptoms2State extends State<PatientEditSymptoms2> {
  final _formKey = GlobalKey<FormState>();
  late String _symptoms2;
  late String newsymptoms2;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (PatientController patientController) {
      return Container(
        height: 250,
        color: Theme.of(context).colorScheme.tertiary,
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Theme.of(context).colorScheme.primary,
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(LocaleKeys.changesymptoms2.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              TextFormField(
                  onSaved: (value) => _symptoms2 = value!,
                  validator: MultiValidator(
                      [RequiredValidator(errorText: '${'required field'}*')]),
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      fillColor: Colors.white,
                      filled: true),
                  minLines: 2,
                  maxLines: 5,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  initialValue: patientController.patients[0].sympotoms2),
              const SizedBox(height: 5),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController
                        .editsymptoms2Patient(newsymptoms2 = _symptoms2);
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
}
