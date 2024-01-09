import 'package:hive/hive.dart';
part '13_unsuccesshorttaskmove.g.dart';

@HiveType(typeId: 13)
class UnSuccesShortTaskMove extends HiveObject {
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
  String? prim;
  @HiveField(10)
  DateTime begintesttime;
  @HiveField(11)
  DateTime stoptesttime;
  @HiveField(12)
  int durationtest;
  @HiveField(13)
  int currentlevelpain;
  @HiveField(14)
  bool dessymptoms1;
  @HiveField(15)
  bool dessymptoms2;
  @HiveField(16)
  bool dessymptoms3;
  @HiveField(17)
  String? sideeffects;
  @HiveField(18)
  bool bigsideeffects;
  @HiveField(19)
  String? placeparestesia;
  @HiveField(20)
  bool longestsuitable;
  UnSuccesShortTaskMove(
      {required this.program,
      required this.electrodes,
      required this.amplit,
      required this.hideampl,
      required this.freq,
      required this.hidefreq,
      required this.dur,
      required this.hidedur,
      this.prim,
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
