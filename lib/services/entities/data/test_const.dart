import 'package:easy_localization/easy_localization.dart';
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

final condchoiceamplr = [
  LocaleKeys.fixamp.tr(),
  LocaleKeys.noparestesia.tr(),
  LocaleKeys.painmin.tr()
];

abstract class TimeTestConst {
  static const timeshorttest = 2;
  static const timepausetest = 1;
}
