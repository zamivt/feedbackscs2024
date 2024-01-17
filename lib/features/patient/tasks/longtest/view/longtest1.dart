import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../collections/patient.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/theme/appimages.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';
import '../controllers/current_long__controller.dart';

class LongTest1 extends StatelessWidget {
  const LongTest1({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLongTaskControler = Get.find<CurrentLongTaskControler>();
    final String _position =
        currentLongTaskControler.currentlongtasks[0].position;
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    final String _sex = currentpatient[0].sex;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          _position + ': ' + LocaleKeys.long.tr(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          AppPictureContainer(
              widget1: Container(),
              widget2: Container(),
              title: LocaleKeys.longtest.tr(),
              picture: ((_position == LocaleKeys.cmove.tr()) &
                      (_sex == LocaleKeys.fem.tr()))
                  ? AppImages.happymovewomen
                  : ((_position == LocaleKeys.cmove.tr()) &
                          (_sex == LocaleKeys.mal.tr()))
                      ? AppImages.happymovemen
                      : ((_position == LocaleKeys.cseat.tr()) &
                              (_sex == LocaleKeys.fem.tr()))
                          ? AppImages.happyseatwomen
                          : ((_position == LocaleKeys.cseat.tr()) &
                                  (_sex == LocaleKeys.mal.tr()))
                              ? AppImages.happyseatmen
                              : ((_position == LocaleKeys.clie.tr()) &
                                      (_sex == LocaleKeys.fem.tr()))
                                  ? AppImages.happysleepwomen
                                  : AppImages.happysleepmen),
          AppHeader(header: LocaleKeys.enterparametres.tr()),
          AppCommentText(
              text: _position == LocaleKeys.cmove.tr()
                  ? LocaleKeys.condlongmove.tr()
                  : _position == LocaleKeys.cseat.tr()
                      ? LocaleKeys.condlongseat.tr()
                      : LocaleKeys.condlongmove.tr()),
          AppTableFullParamStim(
            program: currentLongTaskControler.currentlongtasks[0].program,
            hideamplitude: currentLongTaskControler.currentlongtasks[0].hideamp,
            amplitude: currentLongTaskControler.currentlongtasks[0].amplit,
            hidefreq: currentLongTaskControler.currentlongtasks[0].hidefreq,
            freq: currentLongTaskControler.currentlongtasks[0].freq,
            hidedur: currentLongTaskControler.currentlongtasks[0].hidedur,
            dur: currentLongTaskControler.currentlongtasks[0].dur,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                currentLongTaskControler
                    .addStartTestTimeLongTask(DateTime.now());
                context.read<FeedbackSCSDatabase>().updateActiveTask('lt2');
                context.pushNamed(RouteNames.longtest2);
              },
              child: Text(
                LocaleKeys.begintest.tr(),
                style: Theme.of(context).textTheme.labelLarge,
              ))
        ]),
      ),
    );
  }
}
