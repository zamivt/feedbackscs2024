// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditTimeSeat extends StatefulWidget {
  const PatientEditTimeSeat({super.key});

  @override
  State<PatientEditTimeSeat> createState() => _PatientEditTimeSeatState();
}

class _PatientEditTimeSeatState extends State<PatientEditTimeSeat> {
  final _formKey = GlobalKey<FormState>();
  late int _timeseat;
  late int newtimeseat;

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
                child: Text(LocaleKeys.changetimeseat.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    onSaved: (value) => _timeseat = int.tryParse(value!)!,
                    validator: MultiValidator(
                        [RequiredValidator(errorText: '${'required field'}*')]),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.watch_later_rounded),
                        suffixText: LocaleKeys.hours.tr(),
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                    minLines: 1,
                    maxLines: 1,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    initialValue:
                        patientController.patients[0].timeseat.toString()),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController
                        .edittimeseatPatient(newtimeseat = _timeseat);
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
