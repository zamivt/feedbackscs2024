// ignore_for_file: unused_field, dead_code

import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/collections/patient.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';

import '../../../../repository/feedbackscs_database.dart';
import 'patient_form.dart';
import 'patient_profile.dart';

class DocPatient extends StatefulWidget {
  const DocPatient({super.key});

  @override
  State<DocPatient> createState() => _DocPatientState();
}

class _DocPatientState extends State<DocPatient> {
  @override
  void initState() {
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readPatient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

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
        body: SingleChildScrollView(
            child: currentpatient.isEmpty ? PatientForm() : PatientProfile()));
  }
}
