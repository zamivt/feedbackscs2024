// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditSex extends StatefulWidget {
  const PatientEditSex({super.key});

  @override
  State<PatientEditSex> createState() => _PatientEditSexState();
}

class _PatientEditSexState extends State<PatientEditSex> {
  final _formKey = GlobalKey<FormState>();

  late String newsex;
  String _sex = Get.find<PatientController>().patients[0].sex;
  bool _ismale =
      (Get.find<PatientController>().patients[0].sex == LocaleKeys.mal.tr())
          ? true
          : false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (PatientController patientController) {
      return Container(
        height: 250,
        width: double.infinity,
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
                child: Text(LocaleKeys.changesex.tr(),
                    style: Theme.of(context).textTheme.labelLarge),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(LocaleKeys.sex.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Row(
                          children: [
                            Text(
                              LocaleKeys.fem.tr(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: _ismale ? Colors.grey : Colors.blue),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Transform.scale(
                                scale: 1,
                                child: Switch(
                                  value: _ismale,
                                  onChanged: (value) {
                                    setState(() {
                                      _ismale = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Text(
                              LocaleKeys.mal.tr(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: !_ismale ? Colors.grey : Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController.editsexPatient(
                      newsex =
                          _ismale ? LocaleKeys.mal.tr() : LocaleKeys.fem.tr(),
                    );
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
