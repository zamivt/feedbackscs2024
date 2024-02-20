import 'package:feedbackscs2024/collections/patient.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../collections/double_test.dart';
import '../main.dart';

class DoubleTestProvider extends ChangeNotifier {
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

  Future<void> update(String newfio) async {
    final patient = await isar.iPatients.get(1);

    if (patient != 0) {
      await isar.writeTxn(() async {
        patient!.fio = newfio;
        await isar.iPatients.put(patient);
      });
    }
  }

  Future<void> readDoubleTest() async {
    List<DoubleTest> fetchDoubleTest = await isar.doubleTests.where().findAll();
    doubleTest.clear();
    doubleTest.addAll(fetchDoubleTest);
    notifyListeners();
  }

  // ignore: unused_element
  Future<void> clearDoubleTest() async {
    await isar.writeTxn(() async {
      await isar.doubleTests.clear();
    });
    readDoubleTest();
  }
}
