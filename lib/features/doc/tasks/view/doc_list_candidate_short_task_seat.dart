import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/candidate_short_task_seat_controller.dart';
import '../controllers/short_task_seat_controller.dart';

class DocListCandidateShortTaskSeat extends StatelessWidget {
  const DocListCandidateShortTaskSeat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _candidateShortTaskSeatController =
        Get.find<CandidateShortTaskSeatControler>();
    final _shortTaskSeatController = Get.find<ShortTaskSeatControler>();
    final _listshorttaskseat = _shortTaskSeatController.shorttaskseats.toList();
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              context.pushNamed(RouteNames.doctasks);
            },
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          title: Text(
            LocaleKeys.unfulfilledtasks.tr() + " : " + LocaleKeys.cseat.tr(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: SafeArea(
          child: _candidateShortTaskSeatController
                  .candidateshorttaskseats.isNotEmpty
              ? GetBuilder(builder: (CandidateShortTaskSeatControler
                  candidateShortTaskSeatControler) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: false,
                      itemCount: candidateShortTaskSeatControler
                          .candidateshorttaskseats.length,
                      primary: false,
                      itemBuilder: ((context, index) {
                        return Card(
                          color: Theme.of(context).colorScheme.secondary,
                          shadowColor: Colors.grey[400],
                          elevation: 10,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: ListTile(
                            trailing: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              onPressed: () {
                                _shortTaskSeatController.deleteShortTaskSeat(
                                    candidateShortTaskSeatControler
                                        .candidateshorttaskseats[index].id);
                                candidateShortTaskSeatControler
                                    .deleteCandidateShortTaskSeat(index);
                              },
                            ),
                            title: Column(
                              children: [
                                Row(children: [
                                  Container(
                                      width: 30,
                                      height: 30,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      child: Text(
                                        (index + 1).toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                        textAlign: TextAlign.center,
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      width: 30,
                                      height: 30,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      child: Center(
                                        child: Text(
                                          _listshorttaskseat
                                              .where((_listshorttaskseat) =>
                                                  _listshorttaskseat.id.contains(
                                                      _candidateShortTaskSeatController
                                                          .candidateshorttaskseats[
                                                              index]
                                                          .id))
                                              .map((listshorttaskseat) =>
                                                  listshorttaskseat.program)
                                              .toList()
                                              .first,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    LocaleKeys.electrodess.tr() + ': ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  Expanded(
                                    child: Text(
                                      _listshorttaskseat
                                          .where((_listshorttaskseat) =>
                                              _listshorttaskseat.id.contains(
                                                  _candidateShortTaskSeatController
                                                      .candidateshorttaskseats[
                                                          index]
                                                      .id))
                                          .map((listshorttaskseat) =>
                                              listshorttaskseat.electrodes)
                                          .toList()
                                          .first,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ]),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      LocaleKeys.amps.tr() + ': ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                    ),
                                    _shortTaskSeatController
                                                .shorttaskseats[index]
                                                .condition ==
                                            LocaleKeys.fixamp.tr()
                                        ? Text(
                                            _listshorttaskseat
                                                .where((_listshorttaskseat) =>
                                                    _listshorttaskseat.id.contains(
                                                        _candidateShortTaskSeatController
                                                            .candidateshorttaskseats[
                                                                index]
                                                            .id))
                                                .map((listshorttaskseat) =>
                                                    listshorttaskseat.amplit)
                                                .toList()
                                                .first
                                                .toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall,
                                          )
                                        : Expanded(
                                            child: Text(
                                              _listshorttaskseat
                                                  .where((_listshorttaskseat) =>
                                                      _listshorttaskseat.id.contains(
                                                          _candidateShortTaskSeatController
                                                              .candidateshorttaskseats[
                                                                  index]
                                                              .id))
                                                  .map((listshorttaskseat) =>
                                                      listshorttaskseat
                                                          .condition)
                                                  .toList()
                                                  .first
                                                  .toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall,
                                            ),
                                          ),
                                    _listshorttaskseat
                                            .where((_listshorttaskseat) =>
                                                _listshorttaskseat.id.contains(
                                                    _candidateShortTaskSeatController
                                                        .candidateshorttaskseats[
                                                            index]
                                                        .id))
                                            .map((listshorttaskseat) =>
                                                listshorttaskseat.hideamplt)
                                            .toList()
                                            .first
                                        ? Icon(Icons.visibility_off)
                                        : Container()
                                  ],
                                )
                              ],
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  LocaleKeys.durs.tr() +
                                      ': ' +
                                      _listshorttaskseat
                                          .where((_listshorttaskseat) =>
                                              _listshorttaskseat.id.contains(
                                                  _candidateShortTaskSeatController
                                                      .candidateshorttaskseats[
                                                          index]
                                                      .id))
                                          .map((listshorttaskseat) =>
                                              listshorttaskseat.dur)
                                          .toList()
                                          .first
                                          .toString() +
                                      ', ' +
                                      LocaleKeys.freqs.tr() +
                                      ': ' +
                                      _listshorttaskseat
                                          .where((_listshorttaskseat) =>
                                              _listshorttaskseat.id.contains(
                                                  _candidateShortTaskSeatController
                                                      .candidateshorttaskseats[
                                                          index]
                                                      .id))
                                          .map((listshorttaskseat) => listshorttaskseat.freq)
                                          .toList()
                                          .first
                                          .toString(),
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                _listshorttaskseat
                                        .where((_listshorttaskseat) =>
                                            _listshorttaskseat.id.contains(
                                                _candidateShortTaskSeatController
                                                    .candidateshorttaskseats[
                                                        index]
                                                    .id))
                                        .map((listshorttaskseat) =>
                                            listshorttaskseat.hidefreq)
                                        .toList()
                                        .first
                                    ? Icon(Icons.visibility_off)
                                    : Container()
                              ],
                            ),
                          ),
                        );
                      }));
                })
              : Center(
                  child: Text(
                  LocaleKeys.notask.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                )),
        ));
  }
}
