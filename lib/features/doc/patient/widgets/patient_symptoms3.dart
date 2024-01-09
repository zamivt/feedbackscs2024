// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditSymptoms3 extends StatefulWidget {
  const PatientEditSymptoms3({super.key});

  @override
  State<PatientEditSymptoms3> createState() => _PatientEditSymptoms3State();
}

class _PatientEditSymptoms3State extends State<PatientEditSymptoms3> {
  final _formKey = GlobalKey<FormState>();
  late String _symptoms3;
  late String newsymptoms3;
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
                child: Text(LocaleKeys.changesymptoms3.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    onSaved: (value) => _symptoms3 = value!,
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
                        patientController.patients[0].sympotoms3.toString()),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController
                        .editsymptoms3Patient(newsymptoms3 = _symptoms3);
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
