import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/route_names.dart';
import '../../../../../l10n/locale_keys.g.dart';

class AddshortTask extends StatelessWidget {
  const AddshortTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          child: Text(LocaleKeys.addtask.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                LocaleKeys.choicetypeshorttesting.tr(),
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.pushNamed(RouteNames.docaddsingletask);
                    },
                    child: Text(
                      LocaleKeys.single.tr(),
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.pushNamed(RouteNames.docaddrangetask);
                    },
                    child: Text(
                      LocaleKeys.range.tr(),
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
