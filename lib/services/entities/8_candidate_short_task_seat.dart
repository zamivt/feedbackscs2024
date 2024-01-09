import 'package:hive/hive.dart';

part '8_candidate_short_task_seat.g.dart';

@HiveType(typeId: 8)
class CandidateShortTaskSeat extends HiveObject {
  @HiveField(0)
  String id;

  CandidateShortTaskSeat({
    required this.id,
  });
}
