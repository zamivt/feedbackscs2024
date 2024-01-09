import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/candidate_short_task_move_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/short_task_move_controller.dart';

class DocListCandidateShortTaskMove extends StatelessWidget {
  const DocListCandidateShortTaskMove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _candidateShortTaskMoveController =
        Get.find<CandidateShortTaskMoveControler>();
    final _shortTaskMoveController = Get.find<ShortTaskMoveControler>();
    final _listshorttaskmove = _shortTaskMoveController.shorttaskmoves.toList();
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
            LocaleKeys.unfulfilledtasks.tr() + " : " + LocaleKeys.cmove.tr(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: SafeArea(
          child: _candidateShortTaskMoveController
                  .candidateshorttaskmoves.isNotEmpty
              ? GetBuilder(builder: (CandidateShortTaskMoveControler
                  candidateShortTaskMoveControler) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: false,
                      itemCount: candidateShortTaskMoveControler
                          .candidateshorttaskmoves.length,
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
                                _shortTaskMoveController.deleteShortTaskMove(
                                    candidateShortTaskMoveControler
                                        .candidateshorttaskmoves[index].id);
                                candidateShortTaskMoveControler
                                    .deleteCandidateShortTaskMove(index);
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
                                          _listshorttaskmove
                                              .where((_listshorttaskmove) =>
                                                  _listshorttaskmove.id.contains(
                                                      _candidateShortTaskMoveController
                                                          .candidateshorttaskmoves[
                                                              index]
                                                          .id))
                                              .map((listshorttaskmove) =>
                                                  listshorttaskmove.program)
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
                                      _listshorttaskmove
                                          .where((_listshorttaskmove) =>
                                              _listshorttaskmove.id.contains(
                                                  _candidateShortTaskMoveController
                                                      .candidateshorttaskmoves[
                                                          index]
                                                      .id))
                                          .map((listshorttaskmove) =>
                                              listshorttaskmove.electrodes)
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
                                    _shortTaskMoveController
                                                .shorttaskmoves[index]
                                                .condition ==
                                            LocaleKeys.fixamp.tr()
                                        ? Text(
                                            _listshorttaskmove
                                                .where((_listshorttaskmove) =>
                                                    _listshorttaskmove.id.contains(
                                                        _candidateShortTaskMoveController
                                                            .candidateshorttaskmoves[
                                                                index]
                                                            .id))
                                                .map((listshorttaskmove) =>
                                                    listshorttaskmove.amplit)
                                                .toList()
                                                .first
                                                .toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall,
                                          )
                                        : Expanded(
                                            child: Text(
                                              _listshorttaskmove
                                                  .where((_listshorttaskmove) =>
                                                      _listshorttaskmove.id.contains(
                                                          _candidateShortTaskMoveController
                                                              .candidateshorttaskmoves[
                                                                  index]
                                                              .id))
                                                  .map((listshorttaskmove) =>
                                                      listshorttaskmove
                                                          .condition)
                                                  .toList()
                                                  .first
                                                  .toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall,
                                            ),
                                          ),
                                    _listshorttaskmove
                                            .where((_listshorttaskmove) =>
                                                _listshorttaskmove.id.contains(
                                                    _candidateShortTaskMoveController
                                                        .candidateshorttaskmoves[
                                                            index]
                                                        .id))
                                            .map((listshorttaskmove) =>
                                                listshorttaskmove.hideamplt)
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
                                      _listshorttaskmove
                                          .where((_listshorttaskmove) =>
                                              _listshorttaskmove.id.contains(
                                                  _candidateShortTaskMoveController
                                                      .candidateshorttaskmoves[
                                                          index]
                                                      .id))
                                          .map((listshorttaskmove) =>
                                              listshorttaskmove.dur)
                                          .toList()
                                          .first
                                          .toString() +
                                      ', ' +
                                      LocaleKeys.freqs.tr() +
                                      ': ' +
                                      _listshorttaskmove
                                          .where((_listshorttaskmove) =>
                                              _listshorttaskmove.id.contains(
                                                  _candidateShortTaskMoveController
                                                      .candidateshorttaskmoves[
                                                          index]
                                                      .id))
                                          .map((listshorttaskmove) => listshorttaskmove.freq)
                                          .toList()
                                          .first
                                          .toString(),
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                _listshorttaskmove
                                        .where((_listshorttaskmove) =>
                                            _listshorttaskmove.id.contains(
                                                _candidateShortTaskMoveController
                                                    .candidateshorttaskmoves[
                                                        index]
                                                    .id))
                                        .map((listshorttaskmove) =>
                                            listshorttaskmove.hidefreq)
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
