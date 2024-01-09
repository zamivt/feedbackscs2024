import 'package:hive/hive.dart';
part '9_currentshorttask.g.dart';

@HiveType(typeId: 9)
class CurrentShortTask extends HiveObject {
  @HiveField(0)
  String position;
  @HiveField(1)
  String program;
  @HiveField(2)
  String electrodes;
  @HiveField(3)
  String? condition;
  @HiveField(4)
  double? amplit;
  @HiveField(5)
  bool hideamplt;
  @HiveField(6)
  int freq;
  @HiveField(7)
  bool hidefreq;
  @HiveField(8)
  int dur;
  @HiveField(9)
  bool hidedur;
  @HiveField(10)
  DateTime? begintesttime;
  @HiveField(11)
  DateTime? stoptesttime;
  @HiveField(12)
  int? durationtest;
  @HiveField(13)
  int? currentlevelpain;
  @HiveField(14)
  bool? dessymptoms1;
  @HiveField(15)
  bool? dessymptoms2;
  @HiveField(16)
  bool? dessymptoms3;
  @HiveField(17)
  String? sideeffects;
  @HiveField(18)
  bool? bigsideeffects;
  @HiveField(19)
  String? placeparestesia;
  @HiveField(20)
  bool? longestsuitable;
  @HiveField(21)
  String id;

  CurrentShortTask({
    required this.position,
    required this.program,
    required this.electrodes,
    this.condition,
    this.amplit,
    required this.hideamplt,
    required this.freq,
    required this.hidefreq,
    required this.dur,
    required this.hidedur,
    this.begintesttime,
    this.stoptesttime,
    this.durationtest,
    this.currentlevelpain,
    this.dessymptoms1,
    this.dessymptoms2,
    this.dessymptoms3,
    this.sideeffects,
    this.bigsideeffects,
    this.placeparestesia,
    this.longestsuitable,
    required this.id,
  });
}
