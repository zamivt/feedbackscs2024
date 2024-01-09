// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditPhone extends StatefulWidget {
  const PatientEditPhone({super.key});

  @override
  State<PatientEditPhone> createState() => _PatientEditPhoneState();
}

class _PatientEditPhoneState extends State<PatientEditPhone> {
  final _formKey = GlobalKey<FormState>();
  late String _phone;
  late String newphone;
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
                child: Text(LocaleKeys.changephone.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    onSaved: (value) => _phone = value!,
                    validator: MultiValidator(
                        [RequiredValidator(errorText: '${'required field'}*')]),
                    decoration: InputDecoration(
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    minLines: 2,
                    maxLines: 5,
                    initialValue: patientController.patients[0].phone),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController.editphonePatient(newphone = _phone);
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
