import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/collections/before_test_short_test.dart';
import 'package:feedbackscs2024/collections/current_test.dart';
import 'package:feedbackscs2024/collections/double_test.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';

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
      IBeforeTestSchema,
      DoubleTestSchema,
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
      ..activetask = 'no tasks'
      ..countdoubleshorttest = 0;

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

    readCurrentTest();
  }

  Future<void> updateCountDoubleTest(int newdouble) async {
    final currentTest = await isar.currentTests.get(1);

    if (currentTest != 0) {
      await isar.writeTxn(() async {
        currentTest!.countdoubleshorttest = newdouble;
        await isar.currentTests.put(currentTest);
      });
    }

    readCurrentTest();
  }

  Future<void> updateActiveTask(String newactivetask) async {
    final currentTest = await isar.currentTests.get(1);

    if (currentTest != 0) {
      await isar.writeTxn(() async {
        currentTest!.activetask = newactivetask;
        await isar.currentTests.put(currentTest);
      });
    }

    readCurrentTest();
  }

  Future<void> updatest0ShortTest(
      int id,
      String position,
      String program,
      String electrodes,
      String condition,
      double amplit,
      bool hideamplt,
      int freq,
      bool hidefreq,
      int dur,
      bool hidedur) async {
    final currentTest = await isar.currentTests.get(1);

    if (currentTest != 0) {
      await isar.writeTxn(() async {
        currentTest!.idshorttest = id;
        currentTest.program = program;
        currentTest.electrodes = electrodes;
        currentTest.condition = condition;
        currentTest.amplit = amplit;
        currentTest.hideamplt = hideamplt;
        currentTest.freq = freq;
        currentTest.hidefreq = hidefreq;
        currentTest.dur = dur;
        currentTest.hidedur = hidedur;
        await isar.currentTests.put(currentTest);
      });
    }

    readCurrentTest();
  }

  //BeforeTest
  final List<IBeforeTest> beforeTest = [];
//create BeforetTest
  Future<void> addBeforeTest(
    String program,
    String electrodes,
    double amplit,
    int freq,
    int dur,
  ) async {
    final newBeforetTest = IBeforeTest()
      ..program = program
      ..electrodes = electrodes
      ..amplit = amplit
      ..freq = freq
      ..dur = dur;

    await isar.writeTxn(() => isar.iBeforeTests.put(newBeforetTest));
    readBeforeTest();
  }

  Future<void> readBeforeTest() async {
    List<IBeforeTest> fetchBeforeTest =
        await isar.iBeforeTests.where().findAll();
    beforeTest.clear();
    beforeTest.addAll(fetchBeforeTest);
    notifyListeners();
  }

//doubleTest
  final List<DoubleTest> doubleTest = [];
//create doubleTest
  Future<void> addDoubleTest(
    String position,
    String program,
    String electrodes,
    String condition,
    double amplit,
    int freq,
    int dur,
  ) async {
    final newDoubleTest = DoubleTest()
      ..position = position
      ..program = program
      ..electrodes = electrodes
      ..condition = condition
      ..amplit = amplit
      ..freq = freq
      ..dur = dur;

    await isar.writeTxn(() => isar.doubleTests.put(newDoubleTest));
    readDoubleTest();
  }

  Future<void> readDoubleTest() async {
    List<DoubleTest> fetchDoubleTest = await isar.doubleTests.where().findAll();
    doubleTest.clear();
    doubleTest.addAll(fetchDoubleTest);
    notifyListeners();
  }

  Future<void> clearDoubleTest() async {
    await isar.writeTxn(() async {
      await isar.doubleTests.clear();
    });
    readDoubleTest();
  }

  // ShortTest
  //работа со всеми заданиями кратковременного тестирования
  final List<IShortTest> commonShortTest = [];
//create ShortTest
  Future<void> addShortTest(
    String position,
    String program,
    String electrodes,
    String condition,
    double amplit,
    bool hideamplt,
    int freq,
    bool hidefreq,
    int dur,
    bool hidedur,
  ) async {
    late List<IShortTest> newdoubleShortTest;

    if (condition == LocaleKeys.fixamp.tr()) {
      List<IShortTest> fetchdoubleconstShortTest = await isar.iShortTests
          .filter()
          .positionEqualTo(position)
          .and()
          .electrodesEqualTo(electrodes)
          .and()
          .durEqualTo(freq)
          .and()
          .durEqualTo(dur)
          .and()
          .amplitEqualTo(amplit)
          .findAll();
      newdoubleShortTest = fetchdoubleconstShortTest;
    } else {
      List<IShortTest> fetchdoublenotconstShortTest = await isar.iShortTests
          .filter()
          .positionEqualTo(position)
          .and()
          .electrodesEqualTo(electrodes)
          .and()
          .durEqualTo(freq)
          .and()
          .durEqualTo(dur)
          .and()
          .conditionEqualTo(condition)
          .and()
          .amplitEqualTo(amplit)
          .findAll();
      newdoubleShortTest = fetchdoublenotconstShortTest;
    }
    ;

    if (newdoubleShortTest.length == 0) {
      final newShortTest = IShortTest()
        ..position = position
        ..program = program
        ..electrodes = electrodes
        ..condition = condition
        ..amplit = amplit
        ..hideamplt = hideamplt
        ..freq = freq
        ..hidefreq = hidefreq
        ..dur = dur
        ..hidedur = hidedur
        ..status = 'undef';

      await isar.writeTxn(() => isar.iShortTests.put(newShortTest));
      readCommonShortTest();
      updateCountDoubleTest(0);
    } else {
      addDoubleTest(
          position, program, electrodes, condition, amplit, freq, dur);
      updateCountDoubleTest(1);
    }
  }

  Future<void> updateSt0ShortTest(
    Id id,
  ) async {
    final commonshortTest = await isar.iShortTests.get(id);

    if (commonshortTest != 0) {
      await isar.writeTxn(() async {
        commonshortTest!.status = 'active';

        await isar.iShortTests.put(commonshortTest);
      });
    }

    readCommonShortTest();
  }

//чтение кратковременного  тестирования
  Future<void> readCommonShortTest() async {
    List<IShortTest> fetchShortTest = await isar.iShortTests.where().findAll();
    commonShortTest.clear();
    commonShortTest.addAll(fetchShortTest);
    notifyListeners();
  }

//чтение кратковременного  тестирования движения
  final List<IShortTest> moveShortTest = [];

  Future<void> readCommonShortTestMove() async {
    List<IShortTest> fetchShortTest = await isar.iShortTests
        .where()
        .positionEqualTo(LocaleKeys.cmove.tr())
        .findAll();
    moveShortTest.clear();
    moveShortTest.addAll(fetchShortTest);
    notifyListeners();
  }

//чтение кратковременного  тестирования сидя
  final List<IShortTest> seatshortTest = [];
  Future<void> readCommonShortTestSeat() async {
    List<IShortTest> fetchShortTestSeat = await isar.iShortTests
        .where()
        .positionEqualTo(LocaleKeys.cseat.tr())
        .findAll();
    seatshortTest.clear();
    seatshortTest.addAll(fetchShortTestSeat);
    notifyListeners();
  }

//чтение кратковременного  тестирования лежа
  final List<IShortTest> lieshortTest = [];
  Future<void> readCommonShortTestLie() async {
    List<IShortTest> fetchShortTestLie = await isar.iShortTests
        .where()
        .positionEqualTo(LocaleKeys.clie.tr())
        .findAll();
    lieshortTest.clear();
    lieshortTest.addAll(fetchShortTestLie);
    notifyListeners();
  }

  final List<IShortTest> doubleShortTest = [];

  //чтение кратковременного  тестирования дублирующие

  Future<void> readShortTestDouble() async {
    List<IShortTest> fetchShortTestDouble =
        await isar.iShortTests.where().statusEqualTo('double').findAll();
    doubleShortTest.clear();
    doubleShortTest.addAll(fetchShortTestDouble);
    notifyListeners();
  }

  //чтение кратковременного  тестирования движения невыполненные
  final List<IShortTest> undefmoveshortTest = [];
  Future<void> readundefShortTestMove() async {
    List<IShortTest> fetchundefShortTestMove = await isar.iShortTests
        .filter()
        .positionEqualTo(LocaleKeys.cmove.tr())
        .and()
        .statusEqualTo('undef')
        .findAll();
    undefmoveshortTest.clear();
    undefmoveshortTest.addAll(fetchundefShortTestMove);
    notifyListeners();
  }

  Future<void> deleteundefShortTest(int id) async {
    await isar.writeTxn(() async {
      await isar.iShortTests.delete(id);
    });
    readCommonShortTest();
  }

//чтение кратковременного  тестирования сидя невыполненные
  final List<IShortTest> undefseatshortTest = [];
  Future<void> readundefShortTestSeat() async {
    List<IShortTest> fetchShortTestSeat = await isar.iShortTests
        .filter()
        .positionEqualTo(LocaleKeys.cseat.tr())
        .and()
        .statusEqualTo('undef')
        .findAll();
    undefseatshortTest.clear();
    undefseatshortTest.addAll(fetchShortTestSeat);
    notifyListeners();
  }

//чтение кратковременного  тестирования лежа невыполненные
  final List<IShortTest> undeflieshortTest = [];
  Future<void> readundefShortTestLie() async {
    List<IShortTest> fetchundefShortTestLie = await isar.iShortTests
        .filter()
        .positionEqualTo(LocaleKeys.clie.tr())
        .and()
        .statusEqualTo('undef')
        .findAll();
    undeflieshortTest.clear();
    undeflieshortTest.addAll(fetchundefShortTestLie);
    notifyListeners();
  }

  //чтение кратковременного  тестирования непройденные
  final List<IShortTest> undefshortTest = [];
  Future<void> readCommonShortTestUndef() async {
    List<IShortTest> fetchShortTestundef =
        await isar.iShortTests.where().statusEqualTo('undef').findAll();
    undefshortTest.clear();
    undefshortTest.addAll(fetchShortTestundef);
    notifyListeners();
  }

  //чтение активного задания
  final List<IShortTest> shortTestactive = [];
  Future<void> readActiveShortTest(int currentid) async {
    List<IShortTest> fetchShortTestActive =
        await isar.iShortTests.where().idEqualTo(currentid).findAll();
    shortTestactive.clear();
    shortTestactive.addAll(fetchShortTestActive);
    notifyListeners();
  }

  //Добавление одиночного тестирования с проверкой дублей
  Future<void> addSingleShortTest(
      String position,
      String program,
      String electrodes,
      String condition,
      double amplit,
      int freq,
      int dur,
      bool hiddenfreqdur,
      bool hiddenamplfreqdur) async {
    addShortTest(
        position,
        program,
        electrodes,
        condition,
        amplit,
        hiddenamplfreqdur,
        freq,
        hiddenamplfreqdur || hiddenfreqdur,
        dur,
        hiddenamplfreqdur || hiddenfreqdur);
  }

  Future<void> addRangeShortTest(
    String position,
    String program,
    String electrodes,
    String condition,
    double amplit,
    int startfreq,
    int stopfreq,
    int stepfreq,
    int startdur,
    int stopdur,
    int stepdur,
  ) async {}
  // LongTest
  //работа со всеми заданиями длительного тестирования
  final List<ILongTest> commonlongTest = [];
//create ShortTest
  Future<void> addLongTest(
    String position,
    String program,
    String electrodes,
    String condition,
    double amplit,
    bool hideamplt,
    int freq,
    bool hidefreq,
    int dur,
    bool hidedur,
  ) async {
    final newLongTest = ILongTest()
      ..position = position
      ..program = program
      ..electrodes = electrodes
      ..amplit = amplit
      ..freq = freq
      ..hidefreq = hidefreq
      ..dur = dur
      ..hidedur = hidedur
      ..status = 'undef';

    await isar.writeTxn(() => isar.iLongTests.put(newLongTest));
    readCommonLongTest();
  }

  Future<void> updateStatusLongTest(Id id, String newstatus) async {
    final commonlongTest = await isar.iLongTests.get(id);

    if (commonlongTest != 0) {
      await isar.writeTxn(() async {
        commonlongTest!.status = newstatus;

        await isar.iLongTests.put(commonlongTest);
      });
    }

    readCommonLongTest();
  }

//чтение длительного  тестирования
  Future<void> readCommonLongTest() async {
    List<ILongTest> fetchLongTest = await isar.iLongTests.where().findAll();
    commonlongTest.clear();
    commonlongTest.addAll(fetchLongTest);
    notifyListeners();
  }

//чтение длительного  тестирования движения
  final List<ILongTest> movelongTest = [];
  Future<void> readCommonLongTestMove() async {
    List<ILongTest> fetchLongTestMove = await isar.iLongTests
        .where()
        .positionEqualTo(LocaleKeys.move.tr())
        .findAll();
    movelongTest.clear();
    movelongTest.addAll(fetchLongTestMove);
    notifyListeners();
  }

//чтение длительного  тестирования сидя
  final List<ILongTest> seatlongTest = [];
  Future<void> readCommonLongTestSeat() async {
    List<ILongTest> fetchLongTestSeat =
        await isar.iLongTests.where().positionEqualTo('seat').findAll();
    seatlongTest.clear();
    seatlongTest.addAll(fetchLongTestSeat);
    notifyListeners();
  }

//чтение длительного  тестирования лежа
  final List<ILongTest> lielongTest = [];
  Future<void> readCommonLongTestLie() async {
    List<ILongTest> fetchLongTestLie =
        await isar.iLongTests.where().positionEqualTo('lie').findAll();
    lielongTest.clear();
    lielongTest.addAll(fetchLongTestLie);
    notifyListeners();
  }

  //чтение длительного  тестирования дублирующие
  final List<ILongTest> doublelongTest = [];
  Future<void> readdoubleLongTestDouble() async {
    List<ILongTest> fetchLongTestDouble =
        await isar.iLongTests.where().statusEqualTo('double').findAll();
    doublelongTest.clear();
    doublelongTest.addAll(fetchLongTestDouble);
    notifyListeners();
  }

  //чтение длительного  тестирования движения невыполненные
  final List<ILongTest> undefmovelongTest = [];
  Future<void> readundefLongTestMove() async {
    List<ILongTest> fetchundefLongTestMove = await isar.iLongTests
        .filter()
        .positionEqualTo(LocaleKeys.cmove.tr())
        .and()
        .statusEqualTo('undef')
        .findAll();
    undefmovelongTest.clear();
    undefmovelongTest.addAll(fetchundefLongTestMove);
    notifyListeners();
  }

//чтение длительного  тестирования сидя невыполненные
  final List<ILongTest> undefseatlongTest = [];
  Future<void> readundefLongTestSeat() async {
    List<ILongTest> fetchLongTestSeat = await isar.iLongTests
        .filter()
        .positionEqualTo(LocaleKeys.cseat.tr())
        .and()
        .statusEqualTo('undef')
        .findAll();
    undefseatlongTest.clear();
    undefseatlongTest.addAll(fetchLongTestSeat);
    notifyListeners();
  }

//чтение длительного  тестирования лежа невыполненные
  final List<ILongTest> undeflielongTest = [];
  Future<void> readundefLongTestLie() async {
    List<ILongTest> fetchundefLongTestLie = await isar.iLongTests
        .filter()
        .positionEqualTo(LocaleKeys.clie.tr())
        .and()
        .statusEqualTo('undef')
        .findAll();
    undeflielongTest.clear();
    undeflielongTest.addAll(fetchundefLongTestLie);
    notifyListeners();
  }

  //чтение длительного  тестирования непройденные
  final List<ILongTest> undeflongTest = [];
  Future<void> readCommonLongTestUndef() async {
    List<ILongTest> fetchLongTestDouble =
        await isar.iLongTests.where().statusEqualTo('undef').findAll();
    undeflongTest.clear();
    undeflongTest.addAll(fetchLongTestDouble);
    notifyListeners();
  }
}
