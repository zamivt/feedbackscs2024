import 'package:isar/isar.dart';
part 'before_test_short_test.g.dart';

@collection
class IBeforeTestShortTest {
  Id id = Isar.autoIncrement;
  late String program;
  late String electrode;
  late double amp;
  late int freq;
  late int dur;
  String? prim;
}
