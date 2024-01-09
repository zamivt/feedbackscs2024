import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import '../../../../l10n/locale_keys.g.dart';

class Program extends StatelessWidget {
  const Program({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity - 20,
      child: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Column(
              children: [
                GFAccordion(
                  expandedTitleBackgroundColor:
                      Theme.of(context).colorScheme.tertiary,
                  collapsedTitleBackgroundColor:
                      Theme.of(context).colorScheme.surface,
                  titleChild: Text('1. ' + LocaleKeys.aboutapp.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                  contentChild: Column(children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.all(10.0),
                      width: double.infinity,
                      color: Theme.of(context).colorScheme.secondary,
                      child: Text(LocaleKeys.partapp.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      color: Theme.of(context).colorScheme.tertiary,
                      child: Text(LocaleKeys.profile.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(LocaleKeys.decriptionprofile.tr(),
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      color: Theme.of(context).colorScheme.tertiary,
                      child: Text(LocaleKeys.tasks.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(LocaleKeys.decriptiontasks.tr(),
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      color: Theme.of(context).colorScheme.tertiary,
                      child: Text(LocaleKeys.report.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(LocaleKeys.decriptionreport.tr(),
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10.0),
                      color: Theme.of(context).colorScheme.tertiary,
                      child: Text(LocaleKeys.charge.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(LocaleKeys.decriptionbattery.tr(),
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                  ]),
                ),
                GFAccordion(
                    expandedTitleBackgroundColor:
                        Theme.of(context).colorScheme.tertiary,
                    collapsedTitleBackgroundColor:
                        Theme.of(context).colorScheme.surface,
                    titleChild: Text('2. ' + LocaleKeys.privacy.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                    contentChild: Column(children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        child: Text(LocaleKeys.decriptionconfident.tr(),
                            style: Theme.of(context).textTheme.displaySmall),
                      ),
                    ]))
              ],
            )),
      ),
    );
  }
}
