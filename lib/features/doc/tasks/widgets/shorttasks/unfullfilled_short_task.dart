import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../collections/shorttest.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';

class Unfulfilledshorttasks extends StatefulWidget {
  const Unfulfilledshorttasks({
    super.key,
  });

  @override
  State<Unfulfilledshorttasks> createState() => _UnfulfilledshorttasksState();
}

class _UnfulfilledshorttasksState extends State<Unfulfilledshorttasks> {
  @override
  Widget build(BuildContext context) {
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readundefShortTestSeat();
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readundefShortTestMove();

    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readundefShortTestLie();
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();

    List<IShortTest> undefmoveshortTest =
        feedbackSCSDatabase.undefmoveshortTest;

    List<IShortTest> undefseatshortTest =
        feedbackSCSDatabase.undefseatshortTest;
    List<IShortTest> undeflieshortTest = feedbackSCSDatabase.undeflieshortTest;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          child: Text(LocaleKeys.unfulfilledtasks.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppTextButton(
                    text:
                        '${LocaleKeys.cmove.tr()}\n${undefmoveshortTest.length}',
                    linkbutton: RouteNames.doccandidateshorttaskmove),
              ),
              Expanded(
                child: AppTextButton(
                    text:
                        '${LocaleKeys.cseat.tr()}\n${undefseatshortTest.length}',
                    linkbutton: RouteNames.doccandidateshorttaskseat),
              ),
              Expanded(
                child: AppTextButton(
                    text:
                        '${LocaleKeys.clie.tr()}\n${undeflieshortTest.length}',
                    linkbutton: RouteNames.doccandidateshorttasklie),
              )
            ],
          ),
        ),
      ],
    );
  }
}
