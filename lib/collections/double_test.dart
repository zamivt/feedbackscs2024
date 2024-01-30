import 'package:isar/isar.dart';
part 'double_test.g.dart';

@collection
class DoubleTest {
  Id id = Isar.autoIncrement;
  late String position;
  late String program;
  late String electrodes;
  late String condition;
  double? amplit;
  late int freq;
  late int dur;
}
