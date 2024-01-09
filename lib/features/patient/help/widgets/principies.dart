import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import '../../../../core/ui/theme/appimages.dart';
import '../../../../core/ui/widgets/app_divider.dart';
import '../../../../l10n/locale_keys.g.dart';

class Principies extends StatelessWidget {
  const Principies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.tertiary,
        ),
        child: Column(
          children: [
            GFAccordion(
              expandedTitleBackgroundColor:
                  Theme.of(context).colorScheme.background,
              collapsedTitleBackgroundColor:
                  Theme.of(context).colorScheme.surface,
              titleChild: Text('1. ' + LocaleKeys.principlscs.tr(),
                  style: Theme.of(context).textTheme.displaySmall),
              contentChild: Column(children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.surface,
                  child: Text(LocaleKeys.aboutscs.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(LocaleKeys.infoscs.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.surface,
                  child: Text(LocaleKeys.techscs.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(LocaleKeys.descriptionscs.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(LocaleKeys.controlunit.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(AppImages.pultscs),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(LocaleKeys.descriptioncontrolunit.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(LocaleKeys.ipg.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(AppImages.ipgscs),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(LocaleKeys.descriptonipg.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(LocaleKeys.electrode.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(AppImages.electrodescs),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(LocaleKeys.descriptionelectrode.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(LocaleKeys.chargingsystem.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(AppImages.batteryscs),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(LocaleKeys.descriptioncharge.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            GFAccordion(
              expandedTitleBackgroundColor:
                  Theme.of(context).colorScheme.onSurface,
              collapsedTitleBackgroundColor:
                  Theme.of(context).colorScheme.surface,
              titleChild: Text('2. ' + LocaleKeys.effectiveprogram.tr(),
                  style: Theme.of(context).textTheme.displaySmall),
              contentChild: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(10.0),
                    color: Theme.of(context).colorScheme.surface,
                    child: Text(LocaleKeys.programandcharact.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.characterictic.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(AppImages.tonicscs),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.buster.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(AppImages.burst),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(10.0),
                    color: Theme.of(context).colorScheme.surface,
                    child: Text(LocaleKeys.critef.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.qualitativeevalshort.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.paramshort.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.qualitativeevalshort.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.longtime.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.qualitativecomb.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.effbattery.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.quanificationeveryday.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(LocaleKeys.effbattery.tr(),
                        style: Theme.of(context).textTheme.displaySmall),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GFAccordion(
              expandedTitleBackgroundColor:
                  Theme.of(context).colorScheme.onSurface,
              collapsedTitleBackgroundColor:
                  Theme.of(context).colorScheme.surface,
              titleChild: Text('3. ' + LocaleKeys.typesofactivities.tr(),
                  style: Theme.of(context).textTheme.displaySmall),
              contentChild: Column(children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.surface,
                  child: Text(LocaleKeys.lie.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(LocaleKeys.descriptionlie.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(LocaleKeys.seat.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(LocaleKeys.descriptionseat.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(LocaleKeys.movep.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(LocaleKeys.descriptionmove.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                AppDivider(),
                Text(LocaleKeys.concldescription.tr(),
                    style: Theme.of(context).textTheme.displaySmall),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            GFAccordion(
              expandedTitleBackgroundColor:
                  Theme.of(context).colorScheme.onSurface,
              collapsedTitleBackgroundColor:
                  Theme.of(context).colorScheme.surface,
              titleChild: Text('4. ' + LocaleKeys.strategychoiceandtasks.tr(),
                  style: Theme.of(context).textTheme.displaySmall),
              contentChild: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(LocaleKeys.bigtasks.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(LocaleKeys.mintasks.tr(),
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text(LocaleKeys.stagetest.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.tertiary,
                  child: Text(LocaleKeys.shorttest.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: LocaleKeys.goal.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.findminpain.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.timeactivity.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.nomore10.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.avialablelongtest.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.find5.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.tertiary,
                  child: Text(LocaleKeys.longtest.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: LocaleKeys.goal.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.findtimemore.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.timeactivity.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.discusdoctor.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.avialablelongtest.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.find3.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.tertiary,
                  child: Text(LocaleKeys.testcomb.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: LocaleKeys.goal.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.findcomb.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.timeactivity.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.onedaynight.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.avialablelongtest.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.findfullcomb.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10.0),
                  color: Theme.of(context).colorScheme.tertiary,
                  child: Text(LocaleKeys.everydaytest.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    selectionColor: Theme.of(context).colorScheme.tertiary,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: LocaleKeys.goal.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.findfulcomb.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                        TextSpan(
                            text: LocaleKeys.timeactivity.tr(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: LocaleKeys.fulltime.tr(),
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
