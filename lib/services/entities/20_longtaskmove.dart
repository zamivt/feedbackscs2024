import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
part '20_longtaskmove.g.dart';

@HiveType(typeId: 20)
class LongTaskMove extends HiveObject {
  @HiveField(0)
  String program;
  @HiveField(1)
  String electrodes;
  @HiveField(2)
  double amplit;
  @HiveField(3)
  int freq;
  @HiveField(4)
  int dur;
  @HiveField(5)
  bool hideamp;
  @HiveField(6)
  bool hidefreq;
  @HiveField(7)
  bool hidedur;
  @HiveField(8)
  String? prim;
  @HiveField(9)
  DateTime begintesttime;
  @HiveField(10)
  DateTime stoptesttime;
  @HiveField(11)
  int durationtest;
  @HiveField(12)
  String? reasonstoptest;
  @HiveField(13)
  int markself;
  @HiveField(14)
  String id;

  LongTaskMove(
      {required this.program,
      required this.electrodes,
      required this.amplit,
      required this.freq,
      required this.dur,
      required this.hideamp,
      required this.hidefreq,
      required this.hidedur,
      this.prim,
      required this.begintesttime,
      required this.stoptesttime,
      required this.durationtest,
      required this.reasonstoptest,
      required this.markself})
      : id = const Uuid().v1();
}
