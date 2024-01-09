import 'package:hive/hive.dart';
part '23_docpat.g.dart';

@HiveType(typeId: 23)
class DocPat extends HiveObject {
  @HiveField(0)
  String docid;
  @HiveField(1)
  String family;
  @HiveField(2)
  String io;
  @HiveField(3)
  String email;
  @HiveField(4)
  String photo;
  @HiveField(5)
  String password;
  @HiveField(6)
  String hospital;
  @HiveField(7)
  String phone;
  @HiveField(8)
  int attempt;
  @HiveField(9)
  String history;

  DocPat({
    required this.docid,
    required this.family,
    required this.io,
    required this.email,
    required this.photo,
    required this.password,
    required this.hospital,
    required this.phone,
    required this.attempt,
    required this.history,
  });
}
