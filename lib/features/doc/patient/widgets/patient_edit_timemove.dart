// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditTimeMove extends StatefulWidget {
  const PatientEditTimeMove({super.key});

  @override
  State<PatientEditTimeMove> createState() => _PatientEditTimeMoveState();
}

class _PatientEditTimeMoveState extends State<PatientEditTimeMove> {
  final _formKey = GlobalKey<FormState>();
  late int _timemove;
  late int newtimemove;

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
                child: Text(LocaleKeys.changetimemove.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter(RegExp('[0-9 .]'),
                          allow: true),
                      FilteringTextInputFormatter.deny(' '),
                      FilteringTextInputFormatter.deny(','),
                    ],
                    onSaved: (value) => _timemove = int.tryParse(value!)!,
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
                        patientController.patients[0].timemove.toString()),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController
                        .edittimemovePatient(newtimemove = _timemove);
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
