// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditEmail extends StatefulWidget {
  const PatientEditEmail({super.key});

  @override
  State<PatientEditEmail> createState() => _PatientEditEmailState();
}

class _PatientEditEmailState extends State<PatientEditEmail> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String newemail;
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
                child: Text(LocaleKeys.changeemail.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    onSaved: (value) => _email = value!,
                    validator: MultiValidator([
                      RequiredValidator(errorText: '${'required field'}*'),
                      EmailValidator(errorText: 'enter email'),
                    ]),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                    minLines: 2,
                    maxLines: 5,
                    initialValue: patientController.patients[0].email),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController.editemailPatient(newemail = _email);
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
