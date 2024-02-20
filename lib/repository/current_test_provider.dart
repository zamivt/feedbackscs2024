import 'package:feedbackscs2024/collections/current_test.dart';
import 'package:feedbackscs2024/main.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';

class CurrentTestProvider extends ChangeNotifier {
  // Current test
  final List<CurrentTest> currentTest = [];
//create
  Future<void> addCurrentTest(String stage) async {
    final newCurrentTest = CurrentTest()
      ..stage = stage
      ..activetask = 'no tasks'
      ..idcombinationtest = 0
      ..iddiarytest = 0
      ..idlongtest = 0
      ..idprobetest = 0
      ..idshorttest = 0
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
    } else
      Logger().i('no data');

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
        currentTest.position = position;
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
}
