import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../collections/longtest.dart';
import '../l10n/locale_keys.g.dart';
import '../main.dart';

class LongTestProvider extends ChangeNotifier {
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
