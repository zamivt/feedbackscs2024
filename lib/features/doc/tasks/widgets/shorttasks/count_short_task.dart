import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../collections/shorttest.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';

class CountShortTasks extends StatelessWidget {
  const CountShortTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readCommonShortTestMove();
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readCommonShortTestLie();

    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readCommonShortTestSeat();
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IShortTest> moveshortTest = feedbackSCSDatabase.moveShortTest;
    List<IShortTest> seatshortTest = feedbackSCSDatabase.seatshortTest;
    List<IShortTest> lieshortTest = feedbackSCSDatabase.lieshortTest;
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
          child: Text(LocaleKeys.tasks.tr(),
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
                    text: '${LocaleKeys.cmove.tr()}\n${moveshortTest.length}',
                    linkbutton: RouteNames.docshorttaskmove),
              ),
              Expanded(
                child: AppTextButton(
                    text: '${LocaleKeys.cseat.tr()}\n${seatshortTest.length}',
                    linkbutton: RouteNames.docshorttaskseat),
              ),
              Expanded(
                child: AppTextButton(
                    text: '${LocaleKeys.clie.tr()}\n${lieshortTest.length}',
                    linkbutton: RouteNames.docshorttasklie),
              )
            ],
          ),
        ),
      ],
    );
  }
}
