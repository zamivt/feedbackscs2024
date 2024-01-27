import 'package:isar/isar.dart';
part 'before_test_short_test.g.dart';

@collection
class IBeforeTest {
  Id id = Isar.autoIncrement;
  late String program;
  late String electrodes;
  late double amplit;
  late int freq;
  late int dur;
}
