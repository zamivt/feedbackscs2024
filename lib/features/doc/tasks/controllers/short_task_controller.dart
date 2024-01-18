import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/candidate_short_task_move_controller.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/short_task_move_controller.dart';
import 'package:feedbackscs2024/services/entities/24_double_short_task.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../services/entities/3_short_task_move.dart';
import '../../../../services/entities/4_short_task_lie.dart';
import '../../../../services/entities/5_shorttaskseat.dart';
import '../../../../services/entities/6_candidate_short_task_move.dart';
import '../../../../services/entities/7_candidate_short_task_lie.dart';
import '../../../../services/entities/8_candidate_short_task_seat.dart';

import 'candidate_short_task_lie_controller.dart';
import 'candidate_short_task_seat_controller.dart';
import 'double_short_task_controller.dart';
import 'short_task_lie_controller.dart';
import 'short_task_seat_controller.dart';

class ShortTaskController extends GetxController {
  final _shortTaskMoveController = Get.find<ShortTaskMoveControler>();
  final _candidateshortTaskMoveController =
      Get.find<CandidateShortTaskMoveControler>();
  final _shortTaskSeatController = Get.find<ShortTaskSeatControler>();
  final _candidateshortTaskSeatController =
      Get.find<CandidateShortTaskSeatControler>();
  final _shortTaskLieController = Get.find<ShortTaskLieControler>();
  final _candidateshortTaskLieController =
      Get.find<CandidateShortTaskLieControler>();
  final _doubleshortTaskController = Get.find<DoubleShortTaskControler>();
  add_Range_Short_task(
    String position,
    String selectedactivity,
    String program,
    String electrodes,
    String selectedcondchoiceampl,
    double amplitude,
    int startfreq,
    int endfreq,
    int stepfreq,
    int startdur,
    int enddur,
    int stepdur,
  ) {
    for (int freq = startfreq; freq <= endfreq; freq = freq + stepfreq) {
      for (int dur = startdur; dur <= enddur; dur = dur + stepdur) {
        add_Single_Short_task(position, selectedactivity, program, electrodes,
            selectedcondchoiceampl, amplitude, freq, dur, false, false);
      }
    }
  }

  add_Single_Short_task(
      String position,
      String selectedactivity,
      String program,
      String electrodes,
      String selectedcondchoiceampl,
      double amplitude,
      int freq,
      int dur,
      bool hiddenfreqdur,
      bool hiddenamplfreqdur) {
    int _countolddouble = _doubleshortTaskController.doubleshorttask.length;
    if (selectedcondchoiceampl == LocaleKeys.fixamp.tr()) {
      for (int i = 0; i < _shortTaskMoveController.shorttaskmoves.length; i++) {
        if (_shortTaskMoveController.shorttaskmoves[i].fixformula ==
            ('pos' +
                position +
                'el:' +
                electrodes +
                ' ampl:' +
                amplitude.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString())) {
          //пишем double в строку
        }
      }
      if (_countolddouble ==
          _doubleshortTaskController.doubleshorttask.length) {
        _shortTaskMoveController.addShortTaskMove(
          ShortTaskMove(
              success: 'undef',
              program: program,
              electrodes: electrodes,
              condition: selectedcondchoiceampl,
              amplit: amplitude,
              freq: freq,
              dur: dur,
              hidedur: hiddenamplfreqdur || hiddenfreqdur,
              hidefreq: hiddenamplfreqdur || hiddenfreqdur,
              hideamplt: hiddenamplfreqdur,
              formula: '',
              fixformula: 'el:' +
                  electrodes +
                  ' ampl:' +
                  amplitude.toString() +
                  ' freq: ' +
                  freq.toString() +
                  ' dur: ' +
                  dur.toString()),
        );
        _candidateshortTaskMoveController.addCandidateShortTaskMove(
            CandidateShortTaskMove(
                id: _shortTaskMoveController.shorttaskmoves.last.id));
      }
    }

    if ((selectedactivity == LocaleKeys.cmove.tr()) &&
        (selectedcondchoiceampl != LocaleKeys.fixamp.tr())) {
      for (int i = 0; i < _shortTaskMoveController.shorttaskmoves.length; i++) {
        if (_shortTaskMoveController.shorttaskmoves[i].formula ==
            ('el:' +
                electrodes +
                ' selectamp:' +
                selectedcondchoiceampl.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString())) {
          _doubleshortTaskController.addDoubleShortTask(DoubleShortTask(
              program: program,
              electrodes: electrodes,
              condition: selectedcondchoiceampl,
              amplit: amplitude,
              freq: freq,
              dur: dur,
              hidedur: hiddenamplfreqdur || hiddenfreqdur,
              hidefreq: hiddenamplfreqdur || hiddenfreqdur,
              hideamplt: hiddenamplfreqdur,
              formula: 'el:' +
                  electrodes +
                  ' selectamp:' +
                  selectedcondchoiceampl.toString() +
                  ' freq: ' +
                  freq.toString() +
                  ' dur: ' +
                  dur.toString(),
              fixformula: ''));
        }
      }
      if (_countolddouble ==
          _doubleshortTaskController.doubleshorttask.length) {
        _shortTaskMoveController.addShortTaskMove(ShortTaskMove(
            success: 'indef',
            program: program,
            electrodes: electrodes,
            condition: selectedcondchoiceampl,
            amplit: amplitude,
            freq: freq,
            dur: dur,
            hidedur: hiddenamplfreqdur || hiddenfreqdur,
            hidefreq: hiddenamplfreqdur || hiddenfreqdur,
            hideamplt: hiddenamplfreqdur,
            formula: 'el:' +
                electrodes +
                ' selectamp:' +
                selectedcondchoiceampl.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString(),
            fixformula: ''));
        _candidateshortTaskMoveController.addCandidateShortTaskMove(
            CandidateShortTaskMove(
                id: _shortTaskMoveController.shorttaskmoves.last.id));
      }
      ;
    }
    if ((selectedactivity == LocaleKeys.cseat.tr()) &&
        (selectedcondchoiceampl == LocaleKeys.fixamp.tr())) {
      for (int i = 0; i < _shortTaskSeatController.shorttaskseats.length; i++) {
        if (_shortTaskSeatController.shorttaskseats[i].fixformula ==
            ('el:' +
                electrodes +
                ' ampl:' +
                amplitude.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString())) {
          _doubleshortTaskController.addDoubleShortTask(DoubleShortTask(
              program: program,
              electrodes: electrodes,
              condition: selectedcondchoiceampl,
              amplit: amplitude,
              freq: freq,
              dur: dur,
              hidedur: hiddenamplfreqdur || hiddenfreqdur,
              hidefreq: hiddenamplfreqdur || hiddenfreqdur,
              hideamplt: hiddenamplfreqdur,
              formula: '',
              fixformula: 'el:' +
                  electrodes +
                  ' ampl:' +
                  amplitude.toString() +
                  ' freq: ' +
                  freq.toString() +
                  ' dur: ' +
                  dur.toString()));
        }
      }
      if (_countolddouble ==
          _doubleshortTaskController.doubleshorttask.length) {
        _shortTaskSeatController.addShortTaskSeat(
          ShortTaskSeat(
              success: 'undef',
              program: program,
              electrodes: electrodes,
              condition: selectedcondchoiceampl,
              amplit: amplitude,
              freq: freq,
              dur: dur,
              hidedur: hiddenamplfreqdur || hiddenfreqdur,
              hidefreq: hiddenamplfreqdur || hiddenfreqdur,
              hideamplt: hiddenamplfreqdur,
              formula: '',
              fixformula: 'el:' +
                  electrodes +
                  ' ampl:' +
                  amplitude.toString() +
                  ' freq: ' +
                  freq.toString() +
                  ' dur: ' +
                  dur.toString()),
        );
        _candidateshortTaskSeatController.addCandidateShortTaskSeat(
            CandidateShortTaskSeat(
                id: _shortTaskMoveController.shorttaskmoves.last.id));
      }
    }

    if ((selectedactivity == LocaleKeys.cseat.tr()) &&
        (selectedcondchoiceampl != LocaleKeys.fixamp.tr())) {
      for (int i = 0; i < _shortTaskSeatController.shorttaskseats.length; i++) {
        if (_shortTaskSeatController.shorttaskseats[i].formula ==
            ('el:' +
                electrodes +
                ' selectamp:' +
                selectedcondchoiceampl.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString())) {
          _doubleshortTaskController.addDoubleShortTask(DoubleShortTask(
              program: program,
              electrodes: electrodes,
              condition: selectedcondchoiceampl,
              amplit: amplitude,
              freq: freq,
              dur: dur,
              hidedur: hiddenamplfreqdur || hiddenfreqdur,
              hidefreq: hiddenamplfreqdur || hiddenfreqdur,
              hideamplt: hiddenamplfreqdur,
              formula: 'el:' +
                  electrodes +
                  ' selectamp:' +
                  selectedcondchoiceampl.toString() +
                  ' freq: ' +
                  freq.toString() +
                  ' dur: ' +
                  dur.toString(),
              fixformula: ''));
        }
      }
      if (_countolddouble ==
          _doubleshortTaskController.doubleshorttask.length) {
        _shortTaskSeatController.addShortTaskSeat(ShortTaskSeat(
            success: 'indef',
            program: program,
            electrodes: electrodes,
            condition: selectedcondchoiceampl,
            amplit: amplitude,
            freq: freq,
            dur: dur,
            hidedur: hiddenamplfreqdur || hiddenfreqdur,
            hidefreq: hiddenamplfreqdur || hiddenfreqdur,
            hideamplt: hiddenamplfreqdur,
            formula: 'el:' +
                electrodes +
                ' selectamp:' +
                selectedcondchoiceampl.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString(),
            fixformula: ''));
        _candidateshortTaskSeatController.addCandidateShortTaskSeat(
            CandidateShortTaskSeat(
                id: _shortTaskSeatController.shorttaskseats.last.id));
      }
      ;
    }
    if ((selectedactivity == LocaleKeys.clie.tr()) &&
        (selectedcondchoiceampl == LocaleKeys.fixamp.tr())) {
      for (int i = 0; i < _shortTaskLieController.shorttasklies.length; i++) {
        if (_shortTaskLieController.shorttasklies[i].fixformula ==
            ('el:' +
                electrodes +
                ' ampl:' +
                amplitude.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString())) {
          _doubleshortTaskController.addDoubleShortTask(DoubleShortTask(
              program: program,
              electrodes: electrodes,
              condition: selectedcondchoiceampl,
              amplit: amplitude,
              freq: freq,
              dur: dur,
              hidedur: hiddenamplfreqdur || hiddenfreqdur,
              hidefreq: hiddenamplfreqdur || hiddenfreqdur,
              hideamplt: hiddenamplfreqdur,
              formula: '',
              fixformula: 'el:' +
                  electrodes +
                  ' ampl:' +
                  amplitude.toString() +
                  ' freq: ' +
                  freq.toString() +
                  ' dur: ' +
                  dur.toString()));
        }
      }
      if (_countolddouble ==
          _doubleshortTaskController.doubleshorttask.length) {
        _shortTaskLieController.addShortTaskLie(
          ShortTaskLie(
              success: 'undef',
              program: program,
              electrodes: electrodes,
              condition: selectedcondchoiceampl,
              amplit: amplitude,
              freq: freq,
              dur: dur,
              hidedur: hiddenamplfreqdur || hiddenfreqdur,
              hidefreq: hiddenamplfreqdur || hiddenfreqdur,
              hideamplt: hiddenamplfreqdur,
              formula: '',
              fixformula: 'el:' +
                  electrodes +
                  ' ampl:' +
                  amplitude.toString() +
                  ' freq: ' +
                  freq.toString() +
                  ' dur: ' +
                  dur.toString()),
        );
        _candidateshortTaskLieController.addCandidateShortTaskLie(
            CandidateShortTaskLie(
                id: _shortTaskLieController.shorttasklies.last.id));
      }
    }

    if ((selectedactivity == LocaleKeys.clie.tr()) &&
        (selectedcondchoiceampl != LocaleKeys.fixamp.tr())) {
      for (int i = 0; i < _shortTaskLieController.shorttasklies.length; i++) {
        if (_shortTaskLieController.shorttasklies[i].formula ==
            ('el:' +
                electrodes +
                ' selectamp:' +
                selectedcondchoiceampl.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString())) {
          _doubleshortTaskController.addDoubleShortTask(DoubleShortTask(
              program: program,
              electrodes: electrodes,
              condition: selectedcondchoiceampl,
              amplit: amplitude,
              freq: freq,
              dur: dur,
              hidedur: hiddenamplfreqdur || hiddenfreqdur,
              hidefreq: hiddenamplfreqdur || hiddenfreqdur,
              hideamplt: hiddenamplfreqdur,
              formula: 'el:' +
                  electrodes +
                  ' selectamp:' +
                  selectedcondchoiceampl.toString() +
                  ' freq: ' +
                  freq.toString() +
                  ' dur: ' +
                  dur.toString(),
              fixformula: ''));
        }
      }
      if (_countolddouble ==
          _doubleshortTaskController.doubleshorttask.length) {
        _shortTaskLieController.addShortTaskLie(ShortTaskLie(
            success: 'indef',
            program: program,
            electrodes: electrodes,
            condition: selectedcondchoiceampl,
            amplit: amplitude,
            freq: freq,
            dur: dur,
            hidedur: hiddenamplfreqdur || hiddenfreqdur,
            hidefreq: hiddenamplfreqdur || hiddenfreqdur,
            hideamplt: hiddenamplfreqdur,
            formula: 'el:' +
                electrodes +
                ' selectamp:' +
                selectedcondchoiceampl.toString() +
                ' freq: ' +
                freq.toString() +
                ' dur: ' +
                dur.toString(),
            fixformula: ''));
        _candidateshortTaskLieController.addCandidateShortTaskLie(
            CandidateShortTaskLie(
                id: _shortTaskLieController.shorttasklies.last.id));
      }
      ;
    }
  }
}
