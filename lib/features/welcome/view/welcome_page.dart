// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pdfx/pdfx.dart';
import 'package:provider/provider.dart';
import '../../../collections/patient.dart';
import '../../../core/router/route_names.dart';
import '../../../core/ui/theme/appimages.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../l10n/locale_keys.g.dart';
import '../../../repository/feedbackscs_database.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    AppImages.bigicon,
    AppImages.intellect,
    AppImages.scs,
    AppImages.achivement,
    AppImages.activity,
    AppImages.battery,
    AppImages.report,
    AppImages.confident
  ];
  List discriptionwelcome = [
    LocaleKeys.descriptionapp.tr(),
    LocaleKeys.descriptionunderstand.tr(),
    LocaleKeys.decriptionanaliz.tr(),
    LocaleKeys.descriptionmovetasks.tr(),
    LocaleKeys.descriptionbeactive.tr(),
    LocaleKeys.descriptionbebattery.tr(),
    LocaleKeys.descriptionreport.tr(),
    LocaleKeys.decriptionconfident.tr()
  ];

  List titlewelcome = [
    LocaleKeys.aboutFeedbackSCS.tr(),
    LocaleKeys.understandprocess.tr(),
    LocaleKeys.analizfacts.tr(),
    LocaleKeys.movetasks.tr(),
    LocaleKeys.beactive.tr(),
    LocaleKeys.bebattery.tr(),
    LocaleKeys.reportonboard.tr(),
    LocaleKeys.privacy.tr(),
  ];
  @override
  void initState() {
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readPatient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 'assets/img/empty.png'
                            : images[index]),
                        alignment: Alignment.bottomCenter,
                        fit: BoxFit.scaleDown)),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                                ? SizedBox(
                                    width: 100,
                                    child: Image.asset(images[index]))
                                : Container(),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              color: Theme.of(context).colorScheme.primary,
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                titlewelcome[index].toString(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            const SizedBox(height: 20),
                            ColoredBox(
                              color: Theme.of(context).colorScheme.onBackground,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 60,
                                    child: Text(
                                        discriptionwelcome[index].toString(),
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: List.generate(8, (indexDots) {
                                      return Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 2),
                                        width: 8,
                                        height: index == indexDots ? 25 : 8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: index == indexDots
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .primary
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .primary
                                                  .withOpacity(0.3),
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ),
                            (images.length - 1 == index) || (index == 0)
                                ? Container(
                                    padding: const EdgeInsets.only(
                                        top: 40, left: 40),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        currentpatient.isEmpty
                                            ? context.pushNamed(
                                                RouteNames.patientemptymainpage)
                                            : currentpatient[0].islicense ==
                                                    false
                                                ? context.pushNamed(
                                                    RouteNames.licenseapp)
                                                : context.pushNamed(
                                                    RouteNames.patientmainpage);
                                      },
                                      child: Text(LocaleKeys.begin.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ]),
                ),
              );
            }));
  }

  Future<dynamic> LicenceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              actions: [
                TextButton(
                    onPressed: () {
                      context.read<FeedbackSCSDatabase>().updateIsLisense(true);
                      context.pushNamed(RouteNames.patientmainpage);
                    },
                    child: Text(
                      'Принять лицензионнное соглашение и разрешения',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic),
                    )),
              ],
              title: Text(
                'FeedbackSCS',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              contentPadding: const EdgeInsets.all(10.0),
              content: Column(
                children: [
                  ColoredBox(
                    color: Colors.blue,
                    child: Row(children: [
                      PdfPageNumber(
                        controller: PdfController(
                          document:
                              PdfDocument.openAsset('assets/pdf/sample.pdf'),
                        ),
                        builder: (_, loadingState, page, pagesCount) =>
                            Container(
                          alignment: Alignment.center,
                          child: Text(
                            '$page/${pagesCount ?? 0}',
                            style: const TextStyle(fontSize: 22),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 300,
                    height: 600,
                    child: PdfView(
                        controller: PdfController(
                      document: PdfDocument.openAsset('assets/pdf/sample.pdf'),
                    )),
                  )
                ],
              ),
            ));
  }
}
