import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../../../../../repository/feedbackscs_database.dart';
import '../controllers/current_long__controller.dart';
//import '../widgets/timer.dart';

class LongTest2 extends StatelessWidget {
  const LongTest2({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLongTaskControler = Get.find<CurrentLongTaskControler>();
    final String _position =
        currentLongTaskControler.currentlongtasks[0].position;

    final String _program =
        currentLongTaskControler.currentlongtasks[0].program;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title:
            Text(_position + ': ' + LocaleKeys.program.tr() + ' - ' + _program),
      ),
      body: Column(children: [
        AppHeader(
          header: '1. ' + LocaleKeys.timerrun.tr(),
        ),
        Container(
          color: Theme.of(context).colorScheme.tertiary,
          width: double.infinity,
          child: Text(
              'Начало: ' +
                  currentLongTaskControler
                      .currentlongtasks[0].begintesttime!.day
                      .toString() +
                  "/" +
                  currentLongTaskControler
                      .currentlongtasks[0].begintesttime!.month
                      .toString() +
                  "/" +
                  currentLongTaskControler
                      .currentlongtasks[0].begintesttime!.year
                      .toString() +
                  "  " +
                  currentLongTaskControler
                      .currentlongtasks[0].begintesttime!.hour
                      .toString() +
                  ":" +
                  currentLongTaskControler
                      .currentlongtasks[0].begintesttime!.minute
                      .toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge),
        ),
        Container(
            height: 300,
            child: Center(child: Text(' ТАЙМЕР')
                // TimerLongTest()
                )),
        SizedBox(
          height: 100,
        ),
        ElevatedButton(
            onPressed: () {
              currentLongTaskControler.addStopTestTimeLongTask(DateTime.now());
              currentLongTaskControler.addDurationTestTimeLongTask(
                  currentLongTaskControler.currentlongtasks[0].stoptesttime!
                      .difference(currentLongTaskControler
                          .currentlongtasks[0].begintesttime!)
                      .inMinutes);
              context.read<FeedbackSCSDatabase>().updateActiveTask('lt3');
              context.pushNamed(RouteNames.longtest3);
            },
            child: Text(LocaleKeys.aborttesting.tr(),
                style: Theme.of(context).textTheme.labelLarge))
      ]),
    );
  }
}
