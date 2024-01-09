import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../controllers/current_long__controller.dart';

class TimerLongTest extends StatelessWidget {
  const TimerLongTest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentLongTaskControler = Get.find<CurrentLongTaskControler>();
    return SlideCountdownSeparated(
      showZeroValue: true,
      slideDirection: SlideDirection.up,
      textStyle: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Theme.of(context).colorScheme.tertiary),
      separatorStyle:
          TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 30),
      separatorPadding: const EdgeInsets.symmetric(horizontal: 10),
      duration: Duration(
          minutes: (DateTime.now()
              .difference(
                  currentLongTaskControler.currentlongtasks[0].begintesttime!)
              .inMinutes)),
      onDone: () {},
      countUp: true,
    );
  }
}
