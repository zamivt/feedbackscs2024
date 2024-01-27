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
  int? idcombinationtest;
  int? iddiarytest;
  //индикатор шага тестирования для всех тестов
  String? activetask;
}
