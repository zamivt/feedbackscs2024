// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditLevelMaxPain extends StatefulWidget {
  const PatientEditLevelMaxPain({super.key});

  @override
  State<PatientEditLevelMaxPain> createState() =>
      _PatientEditLevelMaxPainState();
}

class _PatientEditLevelMaxPainState extends State<PatientEditLevelMaxPain> {
  final _formkey = GlobalKey<FormState>();
  late int _levelmaxpain;
  late int newlevelmaxpain;
  final requiredvalidator =
      RequiredValidator(errorText: LocaleKeys.requiredfield.tr() + '*');
  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (PatientController patientController) {
      return Container(
        height: 250,
        color: Theme.of(context).colorScheme.tertiary,
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Theme.of(context).colorScheme.primary,
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(LocaleKeys.changelevelmaxpain.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    onSaved: (value) => _levelmaxpain = int.tryParse(value!)!,
                    validator: MultiValidator([
                      requiredvalidator,
                      RangeValidator(
                          min: 1,
                          max: 10,
                          errorText: LocaleKeys.painmore10.tr())
                    ]),
                    keyboardType: TextInputType.number,
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
                    initialValue:
                        patientController.patients[0].levelmaxpain.toString()),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formkey.currentState?.save();
                    if (_formkey.currentState != null &&
                        _formkey.currentState!.validate()) {
                      patientController.editlevelmaxpainPatient(
                          newlevelmaxpain = _levelmaxpain);
                      Navigator.of(context).pop();
                    }
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
