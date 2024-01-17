import 'package:feedbackscs2024/collections/current_test.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../collections/doc.dart';
import '../collections/longtest.dart';
import '../collections/patient.dart';
import '../collections/placeparestesia_short_test.dart';
import '../collections/reason_finish_long_test.dart';
import '../collections/shorttest.dart';
import '../collections/sideeffects_short_test.dart';

class FeedbackSCSDatabase extends ChangeNotifier {
  static late Isar isar;
  static Future<void> initiliase() async {
    final dirisar = await getApplicationDocumentsDirectory();

    // ignore: unused_local_variable
    isar = await Isar.open([
      IPatientSchema,
      IDocPatSchema,
      CurrentTestSchema,
      IShortTestSchema,
      ILongTestSchema,
      PlaceParestesiaShortTestSchema,
      ReasonFinishLongTestSchema,
      SideEffectsShortTestSchema
    ], directory: dirisar.path, name: 'feedbackSCSInstance');
  }

  //PATIENT
  final List<IPatient> currentPatient = [];
  //create Patient
  Future<void> addPatient(
    bool isremotepatient,
    String fio,
    String sex,
    String email,
    String phone,
    String diagnoz,
    String anamnez,
    int levelmaxpain,
    String sympotoms1,
    String sympotoms2,
    sympotoms3,
    String modelneuro,
    String priorityshorttest,
    int prioritylevelpain,
    int timeseat,
    int timelie,
    int timemove,
  ) async {
    final newPatient = IPatient()
      ..isremotepatient = false
      ..fio = fio
      ..sex = sex
      ..email = email
      ..phone = phone
      ..diagnoz = diagnoz
      ..anamnez = anamnez
      ..levelmaxpain = levelmaxpain
      ..sympotoms1 = sympotoms1
      ..sympotoms2 = sympotoms2
      ..sympotoms3 = sympotoms3
      ..modelneuro = modelneuro
      ..priorityshorttest = priorityshorttest
      ..prioritylevelpain = prioritylevelpain
      ..timeseat = timeseat
      ..timemove = timemove
      ..timelie = timelie
      ..islicense = false;
    await isar.writeTxn(() => isar.iPatients.put(newPatient));
    readPatient();
  }

  //чтение пациента
  Future<void> readPatient() async {
    List<IPatient> fetchPatient = await isar.iPatients.where().findAll();
    currentPatient.clear();
    currentPatient.addAll(fetchPatient);
    notifyListeners();
  }

  //изменение данных пациента
  Future<void> updateFIO(String newfio) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.fio = newfio;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateSEX(String newsex) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.sex = newsex;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateEMAIL(String newemail) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.email = newemail;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updatePhone(String newphone) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.phone = newphone;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateDiagnoz(String newdiagnoz) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.diagnoz = newdiagnoz;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateAnamnez(String newanamnez) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.anamnez = newanamnez;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateMaxlevelpain(int newlevelpain) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.levelmaxpain = newlevelpain;
        patient.prioritylevelpain = newlevelpain ~/ 2;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateSymptoms1(String newsymptoms1) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.sympotoms1 = newsymptoms1;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateSymptoms2(String newsymptoms2) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.sympotoms2 = newsymptoms2;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateSymptoms3(String newsymptoms3) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.sympotoms3 = newsymptoms3;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateModelneuro(String newmodelneuro) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.modelneuro = newmodelneuro;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updatePriorityshorttes(String newpriorityshorttest) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.priorityshorttest = newpriorityshorttest;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateTimemove(int newtimemove) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.timemove = newtimemove;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateTimeseat(int newtimeseat) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.timeseat = newtimeseat;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateTimelie(int newtimelie) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.timelie = newtimelie;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

  Future<void> updateIsLisense(bool islisense) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.islicense = islisense;
        await isar.iPatients.put(patient);
      });
    }

    readPatient();
  }

// Current test
  final List<CurrentTest> currentTest = [];
//create Patient
  Future<void> addCurrentTest(String stage) async {
    final newCurrentTest = CurrentTest()
      ..stage = stage
      ..activetask = 'no tasks';

    await isar.writeTxn(() => isar.currentTests.put(newCurrentTest));
    readCurrentTest();
  }

//чтение текущего тестирования
  Future<void> readCurrentTest() async {
    List<CurrentTest> fetchCurrentTest =
        await isar.currentTests.where().findAll();
    currentTest.clear();
    currentTest.addAll(fetchCurrentTest);
    notifyListeners();
  }

//изменение тестирования
  Future<void> updateTestStage(String newstage) async {
    final currentTest = await isar.currentTests.get(1);

    if (currentTest != 0) {
      await isar.writeTxn(() async {
        currentTest!.stage = newstage;
        await isar.currentTests.put(currentTest);
      });
    }

    readPatient();
  }

  Future<void> updateActiveTask(String newactivetask) async {
    final currentTest = await isar.currentTests.get(1);

    if (currentTest != 0) {
      await isar.writeTxn(() async {
        currentTest!.activetask = newactivetask;
        await isar.currentTests.put(currentTest);
      });
    }

    readPatient();
  }
}
