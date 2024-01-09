import 'package:hive/hive.dart';
part '19_currentlongtask.g.dart';

@HiveType(typeId: 19)
class CurrentLongTask extends HiveObject {
  @HiveField(0)
  String position;
  @HiveField(1)
  String program;
  @HiveField(2)
  String electrodes;
  @HiveField(3)
  double amplit;
  @HiveField(4)
  int freq;
  @HiveField(5)
  int dur;
  @HiveField(6)
  bool hideamp;
  @HiveField(7)
  bool hidefreq;
  @HiveField(8)
  bool hidedur;
  @HiveField(9)
  String? prim;
  @HiveField(10)
  DateTime? begintesttime;
  @HiveField(11)
  DateTime? stoptesttime;
  @HiveField(12)
  int? durationtest;
  @HiveField(13)
  String? reasonstoptest;
  @HiveField(14)
  double? markself;
  @HiveField(15)
  String id;

  CurrentLongTask(
      {required this.position,
      required this.program,
      required this.electrodes,
      required this.amplit,
      required this.freq,
      required this.dur,
      required this.hideamp,
      required this.hidefreq,
      required this.hidedur,
      this.prim,
      this.begintesttime,
      this.stoptesttime,
      this.durationtest,
      this.reasonstoptest,
      this.markself,
      required this.id});
}
