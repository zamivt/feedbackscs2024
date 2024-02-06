import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../services/entities/10_successhorttaskmove.dart';
import '../../../../services/entities/11_successhorttasklie.dart';
import '../../../../services/entities/12_successhorttaskseat.dart';

class BuildCardShortTask extends StatelessWidget {
  const BuildCardShortTask({
    super.key,
    required this.position,
    required List<SuccesShortTaskMove> listsuccessshorttaskmove,
    required List<SuccesShortTaskSeat> listsuccessshorttaskseat,
    required List<SuccesShortTaskLie> listsuccessshorttasklie,
  })  : _listsuccessshorttaskmove = listsuccessshorttaskmove,
        _listsuccessshorttaskseat = listsuccessshorttaskseat,
        _listsuccessshorttasklie = listsuccessshorttasklie;

  final String position;
  final List<SuccesShortTaskMove> _listsuccessshorttaskmove;
  final List<SuccesShortTaskSeat> _listsuccessshorttaskseat;
  final List<SuccesShortTaskLie> _listsuccessshorttasklie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Text(
            LocaleKeys.testgood.tr(),
            style: Theme.of(context).textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 185,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.1, 1.0],
              colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.background
              ],
            ),
          ),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(12),
            itemCount: (position == 'move')
                ? _listsuccessshorttaskmove.length
                : (position == 'seat')
                    ? _listsuccessshorttaskseat.length
                    : _listsuccessshorttasklie.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 20,
              );
            },
            itemBuilder: (context, index) {
              final DateTime begintest;
              (position == 'move')
                  ? (begintest = _listsuccessshorttaskmove[index].begintesttime)
                  : (position == 'seat')
                      ? (begintest =
                          _listsuccessshorttaskseat[index].begintesttime)
                      : (begintest =
                          _listsuccessshorttasklie[index].begintesttime);
              final String electrodes;
              (position == 'move')
                  ? (electrodes = _listsuccessshorttaskmove[index].electrodes)
                  : (position == 'seat')
                      ? (electrodes =
                          _listsuccessshorttaskseat[index].electrodes)
                      : (electrodes =
                          _listsuccessshorttasklie[index].electrodes);
              final double amp;
              (position == 'move')
                  ? (amp = _listsuccessshorttaskmove[index].amplit)
                  : (position == 'seat')
                      ? (amp = _listsuccessshorttaskseat[index].amplit)
                      : (amp = _listsuccessshorttasklie[index].amplit);
              final int freq;
              (position == 'move')
                  ? (freq = _listsuccessshorttaskmove[index].freq)
                  : (position == 'seat')
                      ? (freq = _listsuccessshorttaskseat[index].freq)
                      : (freq = _listsuccessshorttasklie[index].freq);
              final int dur;
              (position == 'move')
                  ? (dur = _listsuccessshorttaskmove[index].dur)
                  : (position == 'seat')
                      ? (dur = _listsuccessshorttaskseat[index].dur)
                      : (dur = _listsuccessshorttasklie[index].dur);
              final int painlevel;
              (position == 'move')
                  ? (painlevel =
                      _listsuccessshorttaskmove[index].currentlevelpain)
                  : (position == 'seat')
                      ? (painlevel =
                          _listsuccessshorttaskseat[index].currentlevelpain)
                      : (painlevel =
                          _listsuccessshorttasklie[index].currentlevelpain);
              return Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primary,
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: const Offset(0, 1),
                  ),
                ]),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Text(
                        '${DateFormat.d().format(begintest)}/${DateFormat.M().format(begintest)}',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(LocaleKeys.electrodes.tr(),
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              const Spacer(),
                              Text(electrodes,
                                  style:
                                      Theme.of(context).textTheme.displayLarge)
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                LocaleKeys.amp.tr(),
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              const Spacer(),
                              Text(amp.toString(),
                                  style:
                                      Theme.of(context).textTheme.displayLarge)
                            ],
                          ),
                          Row(
                            children: [
                              Text(LocaleKeys.freq.tr(),
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              const Spacer(),
                              Text(freq.toString(),
                                  style:
                                      Theme.of(context).textTheme.displayLarge)
                            ],
                          ),
                          Row(
                            children: [
                              Text(LocaleKeys.dur.tr(),
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              const Spacer(),
                              Text(dur.toString(),
                                  style:
                                      Theme.of(context).textTheme.displayLarge)
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          // ignore: prefer_const_constructors
                          Text(
                            LocaleKeys.painlevel.tr(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Text(
                            painlevel.toString(),
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
