import 'package:isar/isar.dart';
part 'current_test.g.dart';

@collection
class CurrentTest {
  Id id = Isar.autoIncrement;

  //стадия тестирования
  String? stage;
  //подсчет дулирубщих тестов при добавлении
  int? countdoubleshorttest;
  //номера текущего  тестировани
  int? idprobetest;

  int? idshorttest;
  int? idlongtest;
  late String position;

  late String program;
  late String electrodes;
  late String condition;
  late double amplit;
  late bool hideamplt;
  late int freq;
  late bool hidefreq;
  late int dur;
  late bool hidedur;

  int? idcombinationtest;
  String? description;
  int? iddiarytest;
  //индикатор шага тестирования для всех тестов
  String? activetask;
}
