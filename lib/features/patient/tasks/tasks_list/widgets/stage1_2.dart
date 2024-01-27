// ignore_for_file: unused_local_variable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';

import 'long_task_table.dart';
import 'short_task_table.dart';

class Stage1_2 extends StatelessWidget {
  const Stage1_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 40,
        alignment: Alignment.center,
        color: Theme.of(context).colorScheme.primary,
        child: Text(
          LocaleKeys.dayactivity.tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: AppColorContainer(
          isminpadding: true,
          color: Theme.of(context).colorScheme.secondary,
          headerbloc: LocaleKeys.shorttest.tr(),
          widget: Column(
            children: [
              ShortTaskTable(),
            ],
          ),
        ),
      ),
      LongTaskTable()
    ]);
  }
}
