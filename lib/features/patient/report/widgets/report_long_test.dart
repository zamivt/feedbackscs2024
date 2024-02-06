import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/patient/report/widgets/report_long_position.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';

class Report_Long_test extends StatelessWidget {
  const Report_Long_test();

  @override
  Widget build(BuildContext context) {
    return AppColorContainer(
        color: Theme.of(context).colorScheme.tertiary,
        headerbloc: LocaleKeys.longtest.tr(),
        widget: const Column(
          children: [
            ReportLongPosition(position: 'move'),
            ReportLongPosition(position: 'seat'),
            ReportLongPosition(position: 'lie')
          ],
        ));
  }
}
