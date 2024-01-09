import 'package:hive/hive.dart';
part '2_beforetask.g.dart';

@HiveType(typeId: 2)
class BeforeTask extends HiveObject {
  @HiveField(0)
  String beforeprogram;
  @HiveField(1)
  String beforelectrode;
  @HiveField(2)
  double beforeamp;
  @HiveField(3)
  int beforefreq;
  @HiveField(4)
  int beforedur;
  @HiveField(5)
  String beforeprim;

  BeforeTask(
      {required this.beforeprogram,
      required this.beforelectrode,
      required this.beforeamp,
      required this.beforefreq,
      required this.beforedur,
      required this.beforeprim});
}
