import 'package:isar/isar.dart';
part 'current_test.g.dart';

@collection
class CurrentTest {
  Id id = Isar.autoIncrement;
  String? stage;
  int? idprobetest;
  int? idshorttest;
  int? idlongtest;
  int? idcombinationtest;
  int? iddiarytest;
}
