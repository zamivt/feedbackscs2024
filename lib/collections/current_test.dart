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
  String? position;

  String? program;
  String? electrodes;
  String? condition;
  double? amplit;
  bool? hideamplt;
  int? freq;
  bool? hidefreq;
  int? dur;
  bool? hidedur;

  int? idcombinationtest;
  String? description;
  int? iddiarytest;
  //индикатор шага тестирования для всех тестов
  String? activetask;
}
