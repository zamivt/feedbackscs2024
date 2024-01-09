import 'package:feedbackscs2024/services/entities/24_double_short_task.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'entities/16_candidate_long_taskmove.dart';
import 'entities/17_candidate_longtasklie.dart';
import 'entities/18_candidate_longtaskseat.dart';
import 'entities/1_patient.dart';
import 'entities/20_longtaskmove.dart';
import 'entities/21_longtasklie.dart';
import 'entities/22_longtaskseat.dart';
import 'entities/23_docpat.dart';
import 'entities/4_short_task_lie.dart';
import 'entities/0_battery.dart';
import 'entities/2_beforetask.dart';
import 'entities/19_currentlongtask.dart';
import 'entities/6_candidate_short_task_move.dart';
import 'entities/7_candidate_short_task_lie.dart';
import 'entities/8_candidate_short_task_seat.dart';
import 'entities/9_currentshorttask.dart';
import 'entities/3_short_task_move.dart';
import 'entities/5_shorttaskseat.dart';
import 'entities/11_successhorttasklie.dart';
import 'entities/10_successhorttaskmove.dart';
import 'entities/12_successhorttaskseat.dart';
import 'entities/14_unsuccesshorttasklie.dart';
import 'entities/13_unsuccesshorttaskmove.dart';
import 'entities/15_unsuccesshorttaskseat.dart';

Future<void> HiveAdapter() async {
  //batteries 0
  Hive.registerAdapter<Battery>(BatteryAdapter());
  await Hive.openBox<Battery>('batteries');
  //patients 1

  Hive.registerAdapter<Patient>(PatientAdapter());
  await Hive.openBox<Patient>('patients');
  //befor task2

  Hive.registerAdapter<BeforeTask>(BeforeTaskAdapter());
  await Hive.openBox<BeforeTask>('beforetasks');
  // shorttask 3-5
  Hive.registerAdapter<ShortTaskSeat>(ShortTaskSeatAdapter());
  await Hive.openBox<ShortTaskSeat>('shorttaskseats');
  Hive.registerAdapter<ShortTaskMove>(ShortTaskMoveAdapter());
  await Hive.openBox<ShortTaskMove>('shorttaskmoves');
  Hive.registerAdapter<ShortTaskLie>(ShortTaskLieAdapter());
  await Hive.openBox<ShortTaskLie>('shorttasklies');
// candidate shorttask 6-8
  Hive.registerAdapter<CandidateShortTaskSeat>(CandidateShortTaskSeatAdapter());
  await Hive.openBox<CandidateShortTaskSeat>('candidateshorttaskseats');
  Hive.registerAdapter<CandidateShortTaskMove>(CandidateShortTaskMoveAdapter());
  await Hive.openBox<CandidateShortTaskMove>('candidateshorttaskmoves');
  Hive.registerAdapter<CandidateShortTaskLie>(CandidateShortTaskLieAdapter());
  await Hive.openBox<CandidateShortTaskLie>('candidateshorttasklies');
  // current short task 9
  Hive.registerAdapter<CurrentShortTask>(CurrentShortTaskAdapter());
  await Hive.openBox<CurrentShortTask>('currentshorttasks');
  // successhort 10-12
  Hive.registerAdapter<SuccesShortTaskMove>(SuccesShortTaskMoveAdapter());
  await Hive.openBox<SuccesShortTaskMove>('succesShorttaskmoves');
  Hive.registerAdapter<SuccesShortTaskSeat>(SuccesShortTaskSeatAdapter());
  await Hive.openBox<SuccesShortTaskSeat>('succesShorttaskseats');
  Hive.registerAdapter<SuccesShortTaskLie>(SuccesShortTaskLieAdapter());
  await Hive.openBox<SuccesShortTaskLie>('succesShorttasklies');

//unsucces 13-15
  Hive.registerAdapter<UnSuccesShortTaskLie>(UnSuccesShortTaskLieAdapter());
  await Hive.openBox<UnSuccesShortTaskLie>('unsuccesShorttasklies');
  Hive.registerAdapter<UnSuccesShortTaskMove>(UnSuccesShortTaskMoveAdapter());
  await Hive.openBox<UnSuccesShortTaskMove>('unsuccesShorttaskmoves');
  Hive.registerAdapter<UnSuccesShortTaskSeat>(UnSuccesShortTaskSeatAdapter());
  await Hive.openBox<UnSuccesShortTaskSeat>('unsuccesShorttaskseats');

  // candidate long task 16-18
  Hive.registerAdapter<CandidateLongTaskMove>(CandidateLongTaskMoveAdapter());
  await Hive.openBox<CandidateLongTaskMove>('candidatelongtaskmoves');
  Hive.registerAdapter<CandidateLongTaskLie>(CandidateLongTaskLieAdapter());
  await Hive.openBox<CandidateLongTaskLie>('candidatelongtasklies');

  Hive.registerAdapter<CandidateLongTaskSeat>(CandidateLongTaskSeatAdapter());
  await Hive.openBox<CandidateLongTaskSeat>('candidatelongtaskseats');
// currentlong task 19
  Hive.registerAdapter<CurrentLongTask>(CurrentLongTaskAdapter());
  await Hive.openBox<CurrentLongTask>('currentlongtasks');
// longtask 20-22
  Hive.registerAdapter<LongTaskMove>(LongTaskMoveAdapter());
  await Hive.openBox<LongTaskMove>('longtaskmoves');
  Hive.registerAdapter<LongTaskSeat>(LongTaskSeatAdapter());
  await Hive.openBox<LongTaskSeat>('longtaskseats');
  Hive.registerAdapter<LongTaskLie>(LongTaskLieAdapter());
  await Hive.openBox<LongTaskLie>('longtasklies');
  Hive.registerAdapter<DocPat>(DocPatAdapter());
  //docpat 23
  await Hive.openBox<DocPat>('docpats');
  //candidate long task

  //double short task
  Hive.registerAdapter<DoubleShortTask>(DoubleShortTaskAdapter());
  await Hive.openBox<DoubleShortTask>('doubleshorttasks');
}
