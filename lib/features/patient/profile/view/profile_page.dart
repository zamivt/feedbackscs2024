import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../collections/patient.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/ui/theme/appimages.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';
import '../widgets/doctor_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: AppDrawer(),
      drawerDragStartBehavior: DragStartBehavior.down,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'FeedBackSCS',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onSurface,
              size: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppPictureContainer(
                  isResponsible: true,
                  height: 300,
                  isinfo: true,
                  title: currentpatient.isEmpty
                      ? LocaleKeys.nodata.tr()
                      : LocaleKeys.goalneuro.tr(),
                  widget1: currentpatient.isEmpty
                      ? Container()
                      : Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(LocaleKeys.diagnoz.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        currentpatient[0].diagnoz,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Text(LocaleKeys.symptoms.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 5, bottom: 5),
                                      child: Text(
                                        currentpatient[0].sympotoms1 +
                                            ', ' +
                                            currentpatient[0].sympotoms2 +
                                            ', ' +
                                            currentpatient[0]
                                                .sympotoms3
                                                .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(LocaleKeys.painlevel.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium),
                                        Text(
                                            currentpatient[0]
                                                .levelmaxpain
                                                .toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge),
                                      ],
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                  widget2: currentpatient.isEmpty
                      ? Container()
                      : Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium,
                                        LocaleKeys.reducingsymptoms.tr()),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        child: Text(
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium,
                                            LocaleKeys.minpain.tr())),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                        currentpatient[0]
                                            .prioritylevelpain
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge),
                                  ],
                                ),
                              ]),
                        ),
                  picture: AppImages.spine),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: AppColorContainer(
                    headerbloc: LocaleKeys.neuro.tr(),
                    color: Theme.of(context).colorScheme.secondary,
                    widget: currentpatient.isEmpty
                        ? Text(
                            LocaleKeys.nodata.tr(),
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.displayLarge,
                          )
                        : Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(LocaleKeys.model.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                  Text(currentpatient[0].modelneuro,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                ],
                              ),
                              AppDivider(),
                              AppTextButton(
                                text: LocaleKeys.instructionneuro.tr(),
                                linkbutton: RouteNames.neuroinst,
                              )
                            ],
                          )),
              ),
              MyDoctor()
            ],
          ),
        ),
      ),
    );
  }
}
