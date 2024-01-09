import 'package:hive/hive.dart';

part '7_candidate_short_task_lie.g.dart';

@HiveType(typeId: 7)
class CandidateShortTaskLie extends HiveObject {
  @HiveField(0)
  String id;

  CandidateShortTaskLie({
    required this.id,
  });
}
