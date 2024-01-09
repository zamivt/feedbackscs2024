// ignore_for_file: dead_code

import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import '../../../l10n/locale_keys.g.dart';

class AppTableFullParamStim extends StatelessWidget {
  final String program;
  final bool hideamplitude;
  final double amplitude;

  final bool hidefreq;
  final int freq;
  final bool hidedur;
  final int dur;

  const AppTableFullParamStim({
    super.key,
    required this.program,
    required this.hideamplitude,
    required this.amplitude,
    required this.hidefreq,
    required this.freq,
    required this.hidedur,
    required this.dur,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(LocaleKeys.program.tr(),
                  style: Theme.of(context).textTheme.displayLarge),
              Text(program, style: Theme.of(context).textTheme.displayLarge)
            ],
          ),
          const AppDivider(),
          (!hideamplitude)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.amp.tr(),
                        style: Theme.of(context).textTheme.displayLarge),
                    Text(amplitude.toString(),
                        style: Theme.of(context).textTheme.displayLarge)
                  ],
                )
              : Container(),
          !hideamplitude ? const AppDivider() : Container(),
          !hidefreq
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.freq.tr(),
                        style: Theme.of(context).textTheme.displayLarge),
                    Text(freq.toString(),
                        style: Theme.of(context).textTheme.displayLarge)
                  ],
                )
              : Container(),
          !hidefreq ? const AppDivider() : Container(),
          !hidedur
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LocaleKeys.dur.tr(),
                        style: Theme.of(context).textTheme.displayLarge),
                    Text(freq.toString(),
                        style: Theme.of(context).textTheme.displayLarge)
                  ],
                )
              : Container(),
          !hidedur ? const AppDivider() : Container(),
        ],
      ),
    );
  }
}
