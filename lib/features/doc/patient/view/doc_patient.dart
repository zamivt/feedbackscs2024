// ignore_for_file: unused_field, dead_code

import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/doc/patient/view/patient_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';
import 'patient_form.dart';

class DocPatient extends StatefulWidget {
  const DocPatient({super.key});

  @override
  State<DocPatient> createState() => _DocPatientState();
}

class _DocPatientState extends State<DocPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
            centerTitle: true,
            foregroundColor: Colors.white,
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(
              LocaleKeys.profpat.tr(),
            ),
            leading: GestureDetector(
              onTap: () => {context.goNamed(RouteNames.welcome)},
              child: const Icon(
                Icons.arrow_back,
              ),
            )),
        body: GetBuilder(
          builder: (PatientController patientController) {
            return SingleChildScrollView(
                child: patientController.patients.isEmpty
                    ? PatientForm()
                    : PatientProfile());
          },
        ));
  }
}
