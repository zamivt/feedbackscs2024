import 'package:hive_flutter/hive_flutter.dart';
part '24_double_short_task.g.dart';

@HiveType(typeId: 24)
class DoubleShortTask extends HiveObject {
  @HiveField(0)
  String program;
  @HiveField(1)
  String electrodes;
  @HiveField(2)
  String? condition;
  @HiveField(3)
  double? amplit;
  @HiveField(4)
  bool hideamplt;
  @HiveField(5)
  int freq;
  @HiveField(6)
  bool hidefreq;
  @HiveField(7)
  int dur;
  @HiveField(8)
  bool hidedur;
  @HiveField(9)
  String? formula;
  @HiveField(10)
  String? fixformula;

  DoubleShortTask(
      {required this.program,
      required this.electrodes,
      required this.amplit,
      required this.condition,
      required this.hideamplt,
      required this.freq,
      required this.hidefreq,
      required this.dur,
      required this.hidedur,
      required this.formula,
      required this.fixformula});
}
