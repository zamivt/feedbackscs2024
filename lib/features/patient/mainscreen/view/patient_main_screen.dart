import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../doc/patient/controllers/patient_controller.dart';
import '../../profile/view/profile_page.dart';
import 'patient_main_empty_screen.dart';
import 'patient_main_full_screen.dart';

class PatientMainScreen extends StatelessWidget {
  const PatientMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (PatientController patientController) {
      return patientController.patients.isEmpty
          ? PatientMainEmptyScreen(
              child: PatientMainEmptyScreen(child: Text('empty')
                  //ProfilePage()
                  ),
            )
          : PatientMainFullScreen(
              child: ProfilePage(),
            );
    });
  }
}
