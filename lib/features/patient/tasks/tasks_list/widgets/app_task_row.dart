import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../l10n/locale_keys.g.dart';

class AppTaskRow extends StatelessWidget {
  final String position;
  final String sex;

  final int tasks;
  final String stadytest;
  AppTaskRow({
    super.key,
    required this.position,
    required this.sex,
    this.tasks = 0,
    required this.stadytest,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: 70,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onBackground)),
                    child: Image.asset(
                        //short test
                        ((stadytest == 'short') &
                                (position == LocaleKeys.cmove.tr()) &
                                (sex == LocaleKeys.fem.tr()))
                            ? AppImages.painmovewomen
                            : ((stadytest == 'short') &
                                    (position == LocaleKeys.cmove.tr()) &
                                    (sex == LocaleKeys.mal.tr()))
                                ? AppImages.painmovemen
                                : ((stadytest == 'short') &
                                        (position == LocaleKeys.cseat.tr()) &
                                        (sex == LocaleKeys.fem.tr()))
                                    ? AppImages.painseatwomen
                                    : ((stadytest == 'short') &
                                            (position ==
                                                LocaleKeys.cseat.tr()) &
                                            (sex == LocaleKeys.mal.tr()))
                                        ? AppImages.painseatmen
                                        : ((stadytest == 'short') &
                                                (position ==
                                                    LocaleKeys.clie.tr()) &
                                                (sex == LocaleKeys.fem.tr()))
                                            ? AppImages.painsleepwomen
                                            : ((stadytest == 'short') &
                                                    (position ==
                                                        LocaleKeys.cmove.tr()) &
                                                    (sex ==
                                                        LocaleKeys.mal.tr()))
                                                ? AppImages.painsleepmen
                                                :
                                                //long test
                                                ((stadytest == 'long') &
                                                        (position ==
                                                            LocaleKeys.cmove
                                                                .tr()) &
                                                        (sex ==
                                                            LocaleKeys.fem
                                                                .tr()))
                                                    ? AppImages.happymovewomen
                                                    : ((stadytest == 'long') &
                                                            (position ==
                                                                LocaleKeys.cmove
                                                                    .tr()) &
                                                            (sex ==
                                                                LocaleKeys.mal
                                                                    .tr()))
                                                        ? AppImages.happymovemen
                                                        : ((stadytest == 'long') &
                                                                (position ==
                                                                    LocaleKeys
                                                                        .cseat
                                                                        .tr()) &
                                                                (sex ==
                                                                    LocaleKeys.fem
                                                                        .tr()))
                                                            ? AppImages
                                                                .happyseatwomen
                                                            : ((stadytest ==
                                                                        'long') &
                                                                    (position ==
                                                                        LocaleKeys
                                                                            .cseat
                                                                            .tr()) &
                                                                    (sex ==
                                                                        LocaleKeys
                                                                            .mal
                                                                            .tr()))
                                                                ? AppImages
                                                                    .happyseatmen
                                                                : ((stadytest ==
                                                                            'long') &
                                                                        (position ==
                                                                            LocaleKeys.clie
                                                                                .tr()) &
                                                                        (sex ==
                                                                            LocaleKeys.fem
                                                                                .tr()))
                                                                    ? AppImages
                                                                        .happysleepwomen
                                                                    : AppImages
                                                                        .happysleepmen)),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 70,
                    padding: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onBackground)),
                    child: Column(
                      children: [
                        Text(position,
                            style: Theme.of(context).textTheme.displayLarge),
                        SizedBox(height: 10),
                        (tasks == 0)
                            ? Text(LocaleKeys.notask.tr(),
                                style: Theme.of(context).textTheme.displaySmall)
                            : Text(
                                LocaleKeys.aviabletasks.tr() +
                                    ' ' +
                                    tasks.toString(),
                                style:
                                    Theme.of(context).textTheme.displaySmall),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
