// ignore_for_file: unused_local_variable, duplicate_ignore

import 'package:feedbackscs2024/features/doc/tasks/controllers/before_task_controller.dart';
import 'package:feedbackscs2024/features/patient/battery/controllers/battery_controllers.dart';
import 'package:feedbackscs2024/features/patient/tasks/longtest/controllers/candidate_long_move.dart';
import 'package:get/instance_manager.dart';
import '../features/doc/auth/controllers/docpat_controllers.dart';

import '../features/doc/tasks/controllers/candidate_short_task_lie_controller.dart';
import '../features/doc/tasks/controllers/candidate_short_task_move_controller.dart';
import '../features/doc/tasks/controllers/candidate_short_task_seat_controller.dart';
import '../features/doc/tasks/controllers/double_short_task_controller.dart';
import '../features/doc/tasks/controllers/short_task_lie_controller.dart';
import '../features/doc/tasks/controllers/short_task_move_controller.dart';
import '../features/doc/tasks/controllers/short_task_seat_controller.dart';
import '../features/patient/tasks/longtest/controllers/candidate_long_lie.dart';
import '../features/patient/tasks/longtest/controllers/candidate_long_seat.dart';
import '../features/patient/tasks/longtest/controllers/current_long__controller.dart';
import '../features/patient/tasks/longtest/controllers/task_long_lie.dart';
import '../features/patient/tasks/longtest/controllers/task_long_move.dart';
import '../features/patient/tasks/longtest/controllers/task_long_seat.dart';

import '../features/patient/tasks/shorttest/controllers/current_short_controller.dart';
import '../features/patient/tasks/shorttest/controllers/success_short_lie_controller.dart';
import '../features/patient/tasks/shorttest/controllers/success_short_move_controller.dart';
import '../features/patient/tasks/shorttest/controllers/success_short_seat_controller.dart';
import '../features/patient/tasks/shorttest/controllers/unsuccess_short_lie_controller.dart';
import '../features/patient/tasks/shorttest/controllers/unsuccess_short_move_controller.dart';
import '../features/patient/tasks/shorttest/controllers/unsuccess_short_seat_controller.dart';

void AppController() {
  // ignore: unused_local_variable

  //docpat
  final docpatController = Get.put<DocPatController>(DocPatController());
// SHORT
//CANDIDATE CONTROLLERS
  final candidateshortTaskMoveController =
      Get.put<CandidateShortTaskMoveControler>(
          CandidateShortTaskMoveControler());

  final candidteshortTaskLieController =
      Get.put<CandidateShortTaskLieControler>(CandidateShortTaskLieControler());
  final candidateshortTaskSeatController =
      Get.put<CandidateShortTaskSeatControler>(
          CandidateShortTaskSeatControler());

  //BEFORE TASK CONTROLLER
  final beforeTaskController =
      Get.put<BeforeTaskController>(BeforeTaskController());
//SHORTTASK CONTROLLERS
  final shortTaskLieController =
      Get.put<ShortTaskLieControler>(ShortTaskLieControler());
  final shortTaskSeatController =
      Get.put<ShortTaskSeatControler>(ShortTaskSeatControler());
  final shortTaskMoveController =
      Get.put<ShortTaskMoveControler>(ShortTaskMoveControler());

  //CURRENT CONTROLLER
  final currentshortTaskMoveController =
      Get.put<CurrentShortTaskControler>(CurrentShortTaskControler());

  //UNSECCESS CONTROLLERS
  final unsuccessshortTaskMoveController =
      Get.put<UnsuccessShortTaskMoveControler>(
          UnsuccessShortTaskMoveControler());
  final unsuccessshortTaskSeatController =
      Get.put<UnsuccessShortTaskSeatControler>(
          UnsuccessShortTaskSeatControler());
  final unsuccessshortTaskLieController =
      Get.put<UnsuccessShortTaskLieControler>(UnsuccessShortTaskLieControler());

  //SUCCESSCONTROLLERS
  final successshortTaskMoveController =
      Get.put<SuccessShortTaskMoveControler>(SuccessShortTaskMoveControler());
  final successshortTaskSeatController =
      Get.put<SuccessShortTaskSeatControler>(SuccessShortTaskSeatControler());
  final successshortTaskLieController =
      Get.put<SuccessShortTaskLieControler>(SuccessShortTaskLieControler());

// LONG
  final currentLongTaskControler =
      Get.put<CurrentLongTaskControler>(CurrentLongTaskControler());
  final candidatetasklongMoveController =
      Get.put<CandidateLongTaskMoveControler>(CandidateLongTaskMoveControler());
  final candidatetasklongSeatController =
      Get.put<CandidateLongTaskSeatControler>(CandidateLongTaskSeatControler());
  final candidatetasklongLieController =
      Get.put<CandidateLongTaskLieControler>(CandidateLongTaskLieControler());

  final tasklongMoveController =
      Get.put<TaskLongMoveControler>(TaskLongMoveControler());
  final tasklongSeatController =
      Get.put<TaskLongSeatControler>(TaskLongSeatControler());
  final tasklongLieController =
      Get.put<LongTaskLieControler>(LongTaskLieControler());

  //battery
  final batteryController = Get.put<BatteryControler>(BatteryControler());
  final doubleshortTaskController =
      Get.put<DoubleShortTaskControler>(DoubleShortTaskControler());
}
