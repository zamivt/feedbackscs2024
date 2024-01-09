import 'package:hive/hive.dart';
part '12_successhorttaskseat.g.dart';

@HiveType(typeId: 12)
class SuccesShortTaskSeat extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String program;
  @HiveField(2)
  String electrodes;
  @HiveField(3)
  double amplit;
  @HiveField(4)
  bool hideampl;
  @HiveField(5)
  int freq;
  @HiveField(6)
  bool hidefreq;
  @HiveField(7)
  int dur;
  @HiveField(8)
  bool hidedur;
  @HiveField(9)
  DateTime begintesttime;
  @HiveField(10)
  DateTime stoptesttime;
  @HiveField(11)
  int durationtest;
  @HiveField(12)
  int currentlevelpain;
  @HiveField(13)
  bool dessymptoms1;
  @HiveField(14)
  bool dessymptoms2;
  @HiveField(15)
  bool dessymptoms3;
  @HiveField(16)
  String? sideeffects;
  @HiveField(17)
  bool bigsideeffects;
  @HiveField(18)
  String? placeparestesia;
  @HiveField(19)
  bool longestsuitable;
  SuccesShortTaskSeat(
      {required this.program,
      required this.electrodes,
      required this.amplit,
      required this.hideampl,
      required this.freq,
      required this.hidefreq,
      required this.dur,
      required this.hidedur,
      required this.begintesttime,
      required this.stoptesttime,
      required this.durationtest,
      required this.currentlevelpain,
      required this.dessymptoms1,
      required this.dessymptoms2,
      required this.dessymptoms3,
      this.sideeffects,
      required this.bigsideeffects,
      this.placeparestesia,
      required this.longestsuitable,
      required this.id});
}
