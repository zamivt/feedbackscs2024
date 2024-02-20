import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../collections/before_test_short_test.dart';
import '../main.dart';

class BeforeTestProvider extends ChangeNotifier {
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
}
