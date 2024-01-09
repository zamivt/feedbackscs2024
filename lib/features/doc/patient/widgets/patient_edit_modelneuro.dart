// ignore_for_file: unused_field
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../../../../services/entities/data/neuromodels.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditModelNeuro extends StatefulWidget {
  const PatientEditModelNeuro({super.key});

  @override
  State<PatientEditModelNeuro> createState() => _PatientEditModelNeuroState();
}

class _PatientEditModelNeuroState extends State<PatientEditModelNeuro> {
  final _formKey = GlobalKey<FormState>();
  final modelneuro = neuromodels.map((e) => e.model);

  late String newmodelneuro;

  String _modelneuro = '-';

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
                child: Text(LocaleKeys.changeneuro.tr(),
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
                        dropdownColor: Theme.of(context).colorScheme.background,
                        isExpanded: true,
                        iconSize: 24,
                        value: patientController.patients[0].modelneuro,
                        items: modelneuro.map(bildMenuNeuro).toList(),
                        onChanged: (String? value) =>
                            setState(() => _modelneuro = value!),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController
                        .editmodelneuroPatient(newmodelneuro = _modelneuro);

                    Navigator.of(context).pop();
                  },
                  child: Text(
                    LocaleKeys.save.tr(),
                    style: Theme.of(context).textTheme.labelLarge,
                  ))
            ],
          ),
        ),
      );
    });
  }

  DropdownMenuItem<String> bildMenuNeuro(String neuro) => DropdownMenuItem(
        value: neuro,
        child: Text(
          neuro,
        ),
      );
}
