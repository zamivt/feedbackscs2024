import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_color_container.dart';
import 'package:feedbackscs2024/features/patient/report/widgets/short_report.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';

class Report_short_test extends StatelessWidget {
  const Report_short_test();

  @override
  Widget build(BuildContext context) {
    return AppColorContainer(
        color: Theme.of(context).colorScheme.secondary,
        headerbloc: LocaleKeys.shorttest.tr(),
        widget: Column(
          children: [
            ShortReportWidget(
              position: 'move',
            ),
            ShortReportWidget(
              position: 'seat',
            ),
            ShortReportWidget(
              position: 'lie',
            ),
          ],
        ));
  }
}
