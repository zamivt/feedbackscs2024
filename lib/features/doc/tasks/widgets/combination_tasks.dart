import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/route_names.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';

class CombinationTasks extends StatelessWidget {
  const CombinationTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppColorContainer(
      color: Theme.of(context).colorScheme.secondary,
      headerbloc: LocaleKeys.testcomb.tr(),
      widget: Column(
        children: [
          AppTextButton(
              text: LocaleKeys.unfulfilledtasks.tr(),
              linkbutton: RouteNames.docshorttaskmove)
        ],
      ),
    );
  }
}

class LongTasks extends StatelessWidget {
  const LongTasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AppColorContainer(
        color: Theme.of(context).colorScheme.secondary,
        headerbloc: LocaleKeys.taskslong.tr(),
        widget: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(RouteNames.docaddlongtask);
                },
                child: Text(
                  LocaleKeys.addtask.tr(),
                  style: Theme.of(context).textTheme.labelLarge,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: Text(LocaleKeys.unfulfilledtasks.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  color: Theme.of(context).colorScheme.tertiary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextButton(
                      text: LocaleKeys.cmove.tr(),
                      linkbutton: RouteNames.docshorttaskmove),
                  SizedBox(
                    width: 20,
                  ),
                  AppTextButton(
                      text: LocaleKeys.cseat.tr(),
                      linkbutton: RouteNames.docshorttaskmove),
                  SizedBox(
                    width: 20,
                  ),
                  AppTextButton(
                      text: LocaleKeys.clie.tr(),
                      linkbutton: RouteNames.docshorttaskmove)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
