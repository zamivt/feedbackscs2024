import 'package:hive/hive.dart';
part '17_candidate_longtasklie.g.dart';

@HiveType(typeId: 17)
class CandidateLongTaskLie extends HiveObject {
  @HiveField(0)
  String id;

  CandidateLongTaskLie({
    required this.id,
  });
}
