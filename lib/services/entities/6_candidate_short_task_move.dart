import 'package:hive/hive.dart';

part '6_candidate_short_task_move.g.dart';

@HiveType(typeId: 6)
class CandidateShortTaskMove extends HiveObject {
  @HiveField(0)
  String id;

  CandidateShortTaskMove({
    required this.id,
  });
}
