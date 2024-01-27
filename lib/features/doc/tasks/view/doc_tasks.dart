import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../collections/patient.dart';
import '../../../../l10n/locale_keys.g.dart';

import '../../../../repository/feedbackscs_database.dart';
import '../widgets/combination_tasks.dart';
import '../widgets/shorttasks/short_task.dart';

class DocTasks extends StatelessWidget {
  const DocTasks({super.key});

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;

    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            LocaleKeys.tasks.tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: SingleChildScrollView(
            child: currentpatient.isNotEmpty
                ? Column(
                    children: [ShortTasks(), LongTasks(), CombinationTasks()],
                  )
                : Container(
                    height: 400,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.secondary,
                    child: Center(
                        child: Text(
                      LocaleKeys.nodata.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    )))));
  }
}
