import 'package:isar/isar.dart';
part 'patient.g.dart';

@collection
class IPatient {
  Id id = Isar.autoIncrement;
  late bool isremotepatient;
  late String fio;
  late String sex;
  late String email;
  late String phone;
  late String diagnoz;
  late String anamnez;
  late int levelmaxpain;
  late String sympotoms1;
  late String sympotoms2;
  String? sympotoms3;
  late String modelneuro;
  late String priorityshorttest;
  late int prioritylevelpain;
  late int timeseat;
  late int timelie;
  late int timemove;
  bool? islicense;
}
