import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/doc/tasks/widgets/beforetasks/before_program_task.dart';
import 'package:flutter/material.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';

import 'add_short_task.dart';
import 'count_short_task.dart';
import 'unfullfilled_short_task.dart';

class ShortTasks extends StatelessWidget {
  const ShortTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AppColorContainer(
        color: Theme.of(context).colorScheme.secondary,
        headerbloc: LocaleKeys.tasksshort.tr(),
        widget: Column(
          children: [
            BeforeProgramTask(),
            CountShortTasks(),
            Unfulfilledshorttasks(),
            AddshortTask(),
          ],
        ),
      ),
    );
  }
}
