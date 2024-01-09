import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import '../../../../../../../services/entities/data/test_const.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/patient_controller.dart';

class PatientEditPriorityShorttest extends StatefulWidget {
  const PatientEditPriorityShorttest({super.key});

  @override
  State<PatientEditPriorityShorttest> createState() =>
      _PatientEditPriorityShorttestState();
}

class _PatientEditPriorityShorttestState
    extends State<PatientEditPriorityShorttest> {
  final _formKey = GlobalKey<FormState>();

  late String newpriorityshorttest;

  bool _issumcrit =
      (Get.find<PatientController>().patients[0].priorityshorttest ==
              choicesol[0])
          ? true
          : false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (PatientController patientController) {
      return Container(
        height: 350,
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
                child: Text(
                  LocaleKeys.changepriorityshorttest.tr(),
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1)),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(choicesol[1],
                            style: TextStyle(
                                fontSize: 16,
                                color:
                                    _issumcrit ? Colors.grey : Colors.blue))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Transform.scale(
                        scale: 1,
                        child: Switch(
                          value: _issumcrit,
                          onChanged: (value) {
                            setState(() {
                              _issumcrit = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      choicesol[0],
                      style: TextStyle(
                          fontSize: 16,
                          color: _issumcrit ? Colors.blue : Colors.grey),
                      textAlign: TextAlign.right,
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary)),
                  onPressed: () {
                    _formKey.currentState?.save();
                    patientController.editpriorityshorttestPatient(
                      newpriorityshorttest =
                          _issumcrit ? choicesol[0] : choicesol[1],
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
