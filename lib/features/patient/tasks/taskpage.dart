import 'package:feedbackscs2024/features/patient/tasks/tasks_list/view/tasks_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../doc/patient/controllers/patient_controller.dart';
import 'longtest/view/longtest1.dart';
import 'longtest/view/longtest2.dart';
import 'longtest/view/longtest3.dart';
import 'shorttest/view/shorttest1.dart';
import 'shorttest/view/shorttest2.dart';
import 'shorttest/view/shorttest3.dart';
import 'shorttest/view/shorttest4.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (PatientController patientController) {
      return (patientController.patients[0].activetask == 'no tasks' ||
              patientController.patients[0].activetask == null)
          ? TasksListPage()
          : patientController.patients[0].activetask == 'st1'
              ? ShortTest1()
              : patientController.patients[0].activetask == 'st2'
                  ? ShortTest2()
                  : patientController.patients[0].activetask == 'st3'
                      ? ShortTest3()
                      : patientController.patients[0].activetask == 'st4'
                          ? ShortTest4()
                          : patientController.patients[0].activetask == 'lt1'
                              ? LongTest1()
                              : patientController.patients[0].activetask ==
                                      'lt2'
                                  ? LongTest2()
                                  : patientController.patients[0].activetask ==
                                          'lt3'
                                      ? LongTest3()
                                      : Container();
    });
  }
}
