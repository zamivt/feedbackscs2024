import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/candidate_short_task_lie_controller.dart';
import '../controllers/short_task_lie_controller.dart';

class DocListCandidateShortTaskLie extends StatelessWidget {
  const DocListCandidateShortTaskLie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _candidateShortTaskLieController =
        Get.find<CandidateShortTaskLieControler>();
    final _shortTaskLieController = Get.find<ShortTaskLieControler>();
    final _listshorttasklie = _shortTaskLieController.shorttasklies.toList();
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
            LocaleKeys.unfulfilledtasks.tr() + " : " + LocaleKeys.clie.tr(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: SafeArea(
          child: _candidateShortTaskLieController
                  .candidateshorttasklies.isNotEmpty
              ? GetBuilder(builder: (CandidateShortTaskLieControler
                  candidateShortTaskLieControler) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: false,
                      itemCount: candidateShortTaskLieControler
                          .candidateshorttasklies.length,
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
                                _shortTaskLieController.deleteShortTaskLie(
                                    candidateShortTaskLieControler
                                        .candidateshorttasklies[index].id);
                                candidateShortTaskLieControler
                                    .deleteCandidateShortTaskLie(index);
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
                                          _listshorttasklie
                                              .where((_listshorttasklie) =>
                                                  _listshorttasklie.id.contains(
                                                      _candidateShortTaskLieController
                                                          .candidateshorttasklies[
                                                              index]
                                                          .id))
                                              .map((listshorttasklie) =>
                                                  listshorttasklie.program)
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
                                      _listshorttasklie
                                          .where((_listshorttasklie) =>
                                              _listshorttasklie.id.contains(
                                                  _candidateShortTaskLieController
                                                      .candidateshorttasklies[
                                                          index]
                                                      .id))
                                          .map((listshorttasklie) =>
                                              listshorttasklie.electrodes)
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
                                    _shortTaskLieController.shorttasklies[index]
                                                .condition ==
                                            LocaleKeys.fixamp.tr()
                                        ? Text(
                                            _listshorttasklie
                                                .where((_listshorttasklie) =>
                                                    _listshorttasklie.id.contains(
                                                        _candidateShortTaskLieController
                                                            .candidateshorttasklies[
                                                                index]
                                                            .id))
                                                .map((listshorttasklie) =>
                                                    listshorttasklie.amplit)
                                                .toList()
                                                .first
                                                .toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall,
                                          )
                                        : Expanded(
                                            child: Text(
                                              _listshorttasklie
                                                  .where((_listshorttasklie) =>
                                                      _listshorttasklie.id.contains(
                                                          _candidateShortTaskLieController
                                                              .candidateshorttasklies[
                                                                  index]
                                                              .id))
                                                  .map((listshorttasklie) =>
                                                      listshorttasklie
                                                          .condition)
                                                  .toList()
                                                  .first
                                                  .toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall,
                                            ),
                                          ),
                                    _listshorttasklie
                                            .where((_listshorttasklie) =>
                                                _listshorttasklie.id.contains(
                                                    _candidateShortTaskLieController
                                                        .candidateshorttasklies[
                                                            index]
                                                        .id))
                                            .map((listshorttasklie) =>
                                                listshorttasklie.hideamplt)
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
                                      _listshorttasklie
                                          .where((_listshorttasklie) =>
                                              _listshorttasklie.id.contains(
                                                  _candidateShortTaskLieController
                                                      .candidateshorttasklies[
                                                          index]
                                                      .id))
                                          .map((listshorttasklie) =>
                                              listshorttasklie.dur)
                                          .toList()
                                          .first
                                          .toString() +
                                      ', ' +
                                      LocaleKeys.freqs.tr() +
                                      ': ' +
                                      _listshorttasklie
                                          .where((_listshorttasklie) =>
                                              _listshorttasklie.id.contains(
                                                  _candidateShortTaskLieController
                                                      .candidateshorttasklies[index]
                                                      .id))
                                          .map((listshorttasklie) => listshorttasklie.freq)
                                          .toList()
                                          .first
                                          .toString(),
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                _listshorttasklie
                                        .where((_listshorttasklie) =>
                                            _listshorttasklie.id.contains(
                                                _candidateShortTaskLieController
                                                    .candidateshorttasklies[
                                                        index]
                                                    .id))
                                        .map((listshorttasklie) =>
                                            listshorttasklie.hidefreq)
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
