import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../services/entities/1_patient.dart';

class PatientController extends GetxController {
  late List<Patient> _patients;
  late Box<Patient> patientbox;

  List<Patient> get patients => _patients;
  PatientController() {
    patientbox = Hive.box<Patient>('patients');
    _patients = [];
    for (int i = 0; i < patientbox.values.length; i++) {
      _patients.add(patientbox.getAt(i)!);
    }
  }

  profPatient(Patient patient) {
    _patients.add(patient);
    patientbox.add(patient);
    update();
  }

  addLicensePatient(bool reqlicense) {
    _patients[0].islicense = reqlicense;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editnamePatient(String newfio) {
    _patients[0].fio = newfio;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editsexPatient(String newsex) {
    _patients[0].sex = newsex;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editemailPatient(String newemail) {
    _patients[0].email = newemail;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editphonePatient(String newphone) {
    _patients[0].phone = newphone;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editdiagnozPatient(String newdiagnoz) {
    _patients[0].diagnoz = newdiagnoz;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editanamnezPatient(String newanamnez) {
    _patients[0].anamnez = newanamnez;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editlevelmaxpainPatient(int newlevelmaxpain) {
    _patients[0].levelmaxpain = newlevelmaxpain;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editsymptoms1Patient(String newsymptoms1) {
    _patients[0].sympotoms1 = newsymptoms1;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editsymptoms2Patient(String newsymptoms2) {
    _patients[0].sympotoms2 = newsymptoms2;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editsymptoms3Patient(String newsymptoms3) {
    _patients[0].sympotoms3 = newsymptoms3;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editp3Patient(String newsymptoms3) {
    _patients[0].sympotoms3 = newsymptoms3;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  edittimeseatPatient(int newtimeseat) {
    _patients[0].timeseat = newtimeseat;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  edittimeliePatient(int newtimelie) {
    _patients[0].timelie = newtimelie;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  edittimemovePatient(int newtimemove) {
    _patients[0].timemove = newtimemove;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editprioritylevelpainPatient(int newprioritylevelpain) {
    _patients[0].prioritylevelpain = newprioritylevelpain;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editmodelneuroPatient(String newmodelneuro) {
    _patients[0].modelneuro = newmodelneuro;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editpriorityshorttestPatient(String newpriorityshorttest) {
    _patients[0].priorityshorttest = newpriorityshorttest;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editchoiceteststagetPatient(String newchoiceteststage) {
    _patients[0].teststage = newchoiceteststage;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  editactivetaskPatient(String newactivetask) {
    _patients[0].activetask = newactivetask;
    patientbox.putAt(0, _patients[0]);
    update();
  }

  addhistoryTestStage(String newhistory) {
    _patients[0].histrorystage =
        _patients[0].histrorystage.toString() + ' ' + newhistory;
    patientbox.putAt(0, _patients[0]);
    update();
  }
}
