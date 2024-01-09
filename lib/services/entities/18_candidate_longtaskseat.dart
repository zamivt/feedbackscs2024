import 'package:hive/hive.dart';
part '18_candidate_longtaskseat.g.dart';

@HiveType(typeId: 18)
class CandidateLongTaskSeat extends HiveObject {
  @HiveField(0)
  String id;

  CandidateLongTaskSeat({
    required this.id,
  });
}
