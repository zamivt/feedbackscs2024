import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/collections/before_test_short_test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';

class DocEditBeforeProgram extends StatefulWidget {
  const DocEditBeforeProgram({super.key});

  @override
  State<DocEditBeforeProgram> createState() => _DocEditBeforeProgramState();
}

class _DocEditBeforeProgramState extends State<DocEditBeforeProgram> {
  final _formKey = GlobalKey<FormState>();

  late String _newprogram;

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IBeforeTest> beforeprogram = feedbackSCSDatabase.beforeTest;

    return AlertDialog(
      backgroundColor: Colors.grey.shade300,
      actionsOverflowButtonSpacing: 20,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.primary)),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.cancel.tr(),
                style: Theme.of(context).textTheme.labelLarge)),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.primary)),
            onPressed: () {
              _formKey.currentState?.save();

              context.read<FeedbackSCSDatabase>().updateFIO(_newprogram);

              Navigator.of(context).pop();
            },
            child: Text(LocaleKeys.save.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ],
      title: Text(LocaleKeys.changename.tr()),
      titleTextStyle: Theme.of(context).textTheme.labelMedium,
      content: Form(
        key: _formKey,
        child: TextFormField(
          onSaved: (value) => _newprogram = value!,
          minLines: 1,
          maxLines: 6,
          initialValue: beforeprogram[0].program,
        ),
      ),
    );
  }
}
