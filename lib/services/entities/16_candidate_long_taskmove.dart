import 'package:hive/hive.dart';
part '16_candidate_long_taskmove.g.dart';

@HiveType(typeId: 16)
class CandidateLongTaskMove extends HiveObject {
  @HiveField(0)
  String id;

  CandidateLongTaskMove({
    required this.id,
  });
}
