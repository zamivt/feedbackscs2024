import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part '0_battery.g.dart';

@HiveType(typeId: 0)
class Battery extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String note;
  @HiveField(2)
  DateTime date;
  @HiveField(3)
  int? lengbattery;
  @HiveField(4)
  int? summarybattery;
  @HiveField(5)
  int? countwithoutcoment;
  @HiveField(6)
  String teststage;
  Battery(
      {required this.note,
      required this.date,
      this.lengbattery,
      this.summarybattery,
      this.countwithoutcoment,
      required this.teststage})
      : id = const Uuid().v1();
}
