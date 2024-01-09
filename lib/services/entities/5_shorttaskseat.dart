import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
part '5_shorttaskseat.g.dart';

@HiveType(typeId: 5)
class ShortTaskSeat extends HiveObject {
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
  @HiveField(11)
  String id;
  @HiveField(12)
  String success;

  ShortTaskSeat(
      {required this.program,
      this.amplit,
      required this.hideamplt,
      this.condition,
      required this.electrodes,
      required this.dur,
      required this.hidedur,
      required this.freq,
      required this.hidefreq,
      this.formula,
      this.fixformula,
      required this.success})
      : id = const Uuid().v1();
}
