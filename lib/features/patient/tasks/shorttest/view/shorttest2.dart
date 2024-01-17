// ignore_for_file: unused_field

//import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/widgets/app_comment_text.dart';
import '../../../../../core/ui/widgets/appcountuptimer.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';
import '../../../../../services/entities/data/test_const.dart';
import '../controllers/current_short_controller.dart';

class ShortTest2 extends StatefulWidget {
  const ShortTest2({super.key});

  @override
  State<ShortTest2> createState() => _ShortTest2State();
}

class _ShortTest2State extends State<ShortTest2> {
  @override
  Widget build(BuildContext context) {
    final _currentShortTaskControler = Get.find<CurrentShortTaskControler>();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Text(Get.find<CurrentShortTaskControler>()
                  .currentshorttasks[0]
                  .position +
              ': ' +
              LocaleKeys.program.tr() +
              ' ' +
              Get.find<CurrentShortTaskControler>()
                  .currentshorttasks[0]
                  .program)),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                '2.' + LocaleKeys.timerrun.tr(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              color: Theme.of(context).colorScheme.tertiary,
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    LocaleKeys.timetest.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const Spacer(),
                  Text(
                    TimeTestConst.timeshorttest.toString() +
                        ' ' +
                        LocaleKeys.min.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 5, left: 5, top: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: AppCommentText(text: LocaleKeys.interrupttesting.tr())),
            Expanded(child: LongTest2Timer()),
            ElevatedButton(
              child: Text(
                LocaleKeys.aborttesting.tr(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
              onPressed: () {
                _currentShortTaskControler
                    .addStopTestTimeShortTask(DateTime.now());
                _currentShortTaskControler.addDurationTestTimeShortTask(
                    _currentShortTaskControler
                        .currentshorttasks[0].stoptesttime!
                        .difference(_currentShortTaskControler
                            .currentshorttasks[0].begintesttime!)
                        .inMinutes);

                context.read<FeedbackSCSDatabase>().updateActiveTask('st3');
                context.pushNamed(RouteNames.shorttest3);
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class LongTest2Timer extends StatelessWidget {
  const LongTest2Timer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 100,
      child: GetBuilder(
          builder: (CurrentShortTaskControler currentShortTaskControler) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Theme.of(context).colorScheme.surfaceTint,
          child: AppCountUpTimer(
              dopstartTime:
                  currentShortTaskControler.currentshorttasks[0].begintesttime!,
              hoursDescription: LocaleKeys.hours.tr(),
              minutesDescription: LocaleKeys.min.tr(),
              enableDescriptions: true,
              timeTextStyle: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              format: CountAppTimerFormat.hoursMinutesSeconds,
              startTime: DateTime.now()),
        );
      }),
    ));
  }
}

class ShortTest2Timer extends StatelessWidget {
  const ShortTest2Timer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 100,
      child: GetBuilder(
          builder: (CurrentShortTaskControler currentShortTaskControler) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Theme.of(context).colorScheme.surfaceTint,
          child: AppCountDownTimer(
            hoursDescription: LocaleKeys.hours.tr(),
            minutesDescription: LocaleKeys.min.tr(),
            enableDescriptions: true,
            timeTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 40,
                fontWeight: FontWeight.bold),
            format: CountDownTimerFormat.hoursMinutesSeconds,
            endTime: DateTime.now().add(Duration(
                minutes: TimeTestConst.timeshorttest -
                    1 -
                    (DateTime.now()
                        .difference(currentShortTaskControler
                            .currentshorttasks[0].begintesttime!)
                        .inMinutes),
                seconds: 60 -
                    (DateTime.now()
                        .difference(currentShortTaskControler
                            .currentshorttasks[0].begintesttime!)
                        .inSeconds))),
            onEnd: () {
              SystemSound.play(SystemSoundType.alert);
              currentShortTaskControler
                  .addStopTestTimeShortTask(DateTime.now());
              currentShortTaskControler.addDurationTestTimeShortTask(
                  currentShortTaskControler.currentshorttasks[0].stoptesttime!
                      .difference(currentShortTaskControler
                          .currentshorttasks[0].begintesttime!)
                      .inMinutes);
              context.read<FeedbackSCSDatabase>().updateActiveTask('st3');
              context.pushNamed(RouteNames.shorttest3);
            },
          ),
        );
      }),
    ));
  }
}
