import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/doc/patient/controllers/patient_controller.dart';
import 'package:get/instance_manager.dart';

import '../../../l10n/locale_keys.g.dart';
import 'neuromodels.dart';

final choicesol = [LocaleKeys.totalcrit.tr(), LocaleKeys.finaldesion.tr()];
final sex = [LocaleKeys.fem.tr(), LocaleKeys.mal.tr()];

final modelneuro = neuromodels.map((e) => e.model);
final choiceteststage = [
  LocaleKeys.shortlongtest.tr(),
  LocaleKeys.combdiarytest.tr(),
  LocaleKeys.notest.tr(),
];
final activity = [
  LocaleKeys.cmove.tr(),
  LocaleKeys.cseat.tr(),
  LocaleKeys.clie.tr()
];
final condchoiceampl = [
  LocaleKeys.fixamp.tr(),
  LocaleKeys.noparestesia.tr(),
  LocaleKeys.painmin.tr() +
      Get.find<PatientController>().patients[0].prioritylevelpain.toString()
];
final condchoiceamplr = [
  LocaleKeys.fixamp.tr(),
  LocaleKeys.noparestesia.tr(),
  LocaleKeys.painmin.tr()
];

abstract class TimeTestConst {
  static const timeshorttest = 2;
  static const timepausetest = 1;
}
