import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../core/ui/theme/appimages.dart';
import '../../../../core/ui/widgets/app_picture_container.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../doc/patient/controllers/patient_controller.dart';

Profile(context) {
  return GetBuilder(builder: (PatientController patientController) {
    return AppPictureContainer(
        isResponsible: true,
        height: 300,
        isinfo: true,
        title: patientController.patients.isEmpty
            ? LocaleKeys.nodata.tr()
            : LocaleKeys.goalneuro.tr(),
        widget1: patientController.patients.isEmpty
            ? Container()
            : Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(LocaleKeys.diagnoz.tr(),
                              style: Theme.of(context).textTheme.displayMedium),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(
                              patientController.patients[0].diagnoz,
                              style: Theme.of(context).textTheme.labelLarge,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(LocaleKeys.symptoms.tr(),
                              style: Theme.of(context).textTheme.displayMedium),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 5, bottom: 5),
                            child: Text(
                              patientController.patients[0].sympotoms1 +
                                  ', ' +
                                  patientController.patients[0].sympotoms2 +
                                  ', ' +
                                  patientController.patients[0].sympotoms3
                                      .toString(),
                              style: Theme.of(context).textTheme.labelLarge,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(LocaleKeys.painlevel.tr(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium),
                              Text(
                                  patientController.patients[0].levelmaxpain
                                      .toString(),
                                  style:
                                      Theme.of(context).textTheme.labelLarge),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
        widget2: patientController.patients.isEmpty
            ? Container()
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                              style: Theme.of(context).textTheme.displayMedium,
                              LocaleKeys.reducingsymptoms.tr()),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Text(
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                  LocaleKeys.minpain.tr())),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              patientController.patients[0].prioritylevelpain
                                  .toString(),
                              style: Theme.of(context).textTheme.labelLarge),
                        ],
                      ),
                    ]),
              ),
        picture: AppImages.spine);
  });
}
