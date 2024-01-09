import 'package:isar/isar.dart';
part 'doc.g.dart';

@collection
class IDocPat {
  Id id = Isar.autoIncrement;
  late String docid;
  late String family;
  late String io;
  late String email;
  late String photo;
  late String password;
  late String hospital;
  late String phone;
  late int attempt;
  late String history;
}
