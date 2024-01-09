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
              final DateTime _begintest;
              (position == 'move')
                  ? (_begintest =
                      _listsuccessshorttaskmove[index].begintesttime)
                  : (position == 'seat')
                      ? (_begintest =
                          _listsuccessshorttaskseat[index].begintesttime)
                      : (_begintest =
                          _listsuccessshorttasklie[index].begintesttime);
              final String _electrodes;
              (position == 'move')
                  ? (_electrodes = _listsuccessshorttaskmove[index].electrodes)
                  : (position == 'seat')
                      ? (_electrodes =
                          _listsuccessshorttaskseat[index].electrodes)
                      : (_electrodes =
                          _listsuccessshorttasklie[index].electrodes);
              final double _amp;
              (position == 'move')
                  ? (_amp = _listsuccessshorttaskmove[index].amplit)
                  : (position == 'seat')
                      ? (_amp = _listsuccessshorttaskseat[index].amplit)
                      : (_amp = _listsuccessshorttasklie[index].amplit);
              final int _freq;
              (position == 'move')
                  ? (_freq = _listsuccessshorttaskmove[index].freq)
                  : (position == 'seat')
                      ? (_freq = _listsuccessshorttaskseat[index].freq)
                      : (_freq = _listsuccessshorttasklie[index].freq);
              final int _dur;
              (position == 'move')
                  ? (_dur = _listsuccessshorttaskmove[index].dur)
                  : (position == 'seat')
                      ? (_dur = _listsuccessshorttaskseat[index].dur)
                      : (_dur = _listsuccessshorttasklie[index].dur);
              final int _painlevel;
              (position == 'move')
                  ? (_painlevel =
                      _listsuccessshorttaskmove[index].currentlevelpain)
                  : (position == 'seat')
                      ? (_painlevel =
                          _listsuccessshorttaskseat[index].currentlevelpain)
                      : (_painlevel =
                          _listsuccessshorttasklie[index].currentlevelpain);
              return Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primary,
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(0, 1),
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
                        '${DateFormat.d().format(_begintest)}/${DateFormat.M().format(_begintest)}',
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
                              Text(_electrodes,
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
                              Text(_amp.toString(),
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
                              Text(_freq.toString(),
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
                              Text(_dur.toString(),
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
                            _painlevel.toString(),
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
