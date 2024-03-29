import 'package:isar/isar.dart';
part 'longtest.g.dart';

@collection
class ILongTest {
  late Id id;
  @Index()
  late String status;
  @Index()
  late String position;
  late String program;
  @Index()
  late String electrodes;
  late double amplit;

  late int freq;
  late int dur;
  late bool hideamp;
  late bool hidefreq;
  late bool hidedur;
  late String formula;
  //longtest1
  @Index()
  DateTime? begintesttime;
  DateTime? stoptesttime;
  @Index()
  int? durationtest;
  //longtest2

  int? markself;
  bool? ismoresuccess;
}

List<String>? reasonStopTest;
