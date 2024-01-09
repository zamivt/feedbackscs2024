import 'package:hive/hive.dart';
part '1_patient.g.dart';

@HiveType(typeId: 1)
class Patient extends HiveObject {
  @HiveField(0)
  bool isremotepatient;
  @HiveField(1)
  String fio;
  @HiveField(2)
  String email;
  @HiveField(3)
  String phone;
  @HiveField(4)
  String diagnoz;
  @HiveField(5)
  String anamnez;
  @HiveField(6)
  int levelmaxpain;
  @HiveField(7)
  String sympotoms1;
  @HiveField(8)
  String sympotoms2;
  @HiveField(9)
  String? sympotoms3;
  @HiveField(10)
  String modelneuro;

  @HiveField(11)
  String priorityshorttest;
  @HiveField(12)
  int prioritylevelpain;
  @HiveField(13)
  int timeseat;
  @HiveField(14)
  int timelie;
  @HiveField(15)
  int timemove;
  @HiveField(16)
  String teststage;
  @HiveField(17)
  String? activetask;
  @HiveField(18)
  bool? islicense;
  @HiveField(19)
  String sex;
  @HiveField(20)
  String? histrorystage;

  Patient(
      {required this.isremotepatient,
      required this.fio,
      required this.email,
      required this.phone,
      required this.diagnoz,
      required this.anamnez,
      required this.levelmaxpain,
      required this.sympotoms1,
      required this.sympotoms2,
      this.sympotoms3,
      required this.modelneuro,
      required this.priorityshorttest,
      required this.prioritylevelpain,
      required this.timelie,
      required this.timeseat,
      required this.timemove,
      required this.teststage,
      this.islicense = false,
      this.activetask,
      this.sex = 'femail',
      this.histrorystage = ''});
}
