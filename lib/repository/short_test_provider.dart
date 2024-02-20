import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/repository/doubletest_provider.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../collections/shorttest.dart';
import '../l10n/locale_keys.g.dart';
import '../main.dart';

class ShortTestProvider extends ChangeNotifier {
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

    if (newdoubleShortTest.isEmpty) {
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
    } else {
      DoubleTestProvider().addDoubleTest(
          position, program, electrodes, condition, amplit, freq, dur);
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

  Future<void> updateSt1withoutconditionShortTest(
    Id id,
  ) async {
    final commonshortTest = await isar.iShortTests.get(id);

    if (commonshortTest != 0) {
      await isar.writeTxn(() async {
        commonshortTest!.begintesttime = DateTime.now();

        await isar.iShortTests.put(commonshortTest);
      });
    }

    readCommonShortTest();
  }

  Future<void> updateSt1withconditionShortTest(
    double newampl,
    Id id,
  ) async {
    final commonshortTest = await isar.iShortTests.get(id);

    if (commonshortTest != 0) {
      await isar.writeTxn(() async {
        commonshortTest!.begintesttime = DateTime.now();
        commonshortTest.amplit = newampl;

        await isar.iShortTests.put(commonshortTest);
      });
    }

    readCommonShortTest();
  }

  Future<void> updateSt2ShortTest(
    Id id,
  ) async {
    final commonshortTest = await isar.iShortTests.get(id);

    if (commonshortTest != 0) {
      await isar.writeTxn(() async {
        commonshortTest!.stoptesttime = DateTime.now();
        commonshortTest.durationtest =
            DateTime.now().difference(commonshortTest.begintesttime!).inMinutes;

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
}
