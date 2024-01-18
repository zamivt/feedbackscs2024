import 'package:isar/isar.dart';
part 'shorttest.g.dart';

@collection
class IShortTest {
  Id id = Isar.autoIncrement;
  @Index()
  late String position;
  @Index()
  late String status;
  late String program;
  @Index()
  late String electrodes;
  late String condition;
  double? amplit;
  late bool hideamplt;
  late int freq;
  late bool hidefreq;
  late int dur;
  late bool hidedur;
  String? formula;
  String? fixformula;
  //shorttest1
  @Index()
  DateTime? begintesttime;
  //shorttest2
  DateTime? stoptesttime;
  @Index()
  int? durationtest;
  //short test 3
  int? currentlevelpain;
  bool? dessymptoms1;
  bool? dessymptoms2;
  bool? dessymptoms3;
  bool? bigsideeffects;
}

List<String>? sideEffects;

List<String>? placeParestesia;
