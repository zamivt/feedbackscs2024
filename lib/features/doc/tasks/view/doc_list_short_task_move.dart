import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import 'package:grouped_list/grouped_list.dart';

import '../../../../services/entities/3_short_task_move.dart';
import '../controllers/short_task_move_controller.dart';

class DocListShortTaskMove extends StatelessWidget {
  const DocListShortTaskMove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _shortTaskMoveController = Get.find<ShortTaskMoveControler>();
    List<ShortTaskMove> _shorttaskmovelist =
        _shortTaskMoveController.shorttaskmoves;
    _shorttaskmovelist.sort((a, b) => a.condition!.compareTo(b.condition!));

    return Scaffold(
        backgroundColor: Colors.blueGrey[200],
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
          centerTitle: true,
          title: Text(
            LocaleKeys.tasks.tr() + " : " + LocaleKeys.cmove.tr(),
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: SafeArea(
          child: _shorttaskmovelist.isNotEmpty
              ? GroupedListView(
                  floatingHeader: false,
                  elements: _shorttaskmovelist,
                  groupBy: (element) => element.electrodes,
                  itemComparator: (item1, item2) =>
                      item2.condition!.compareTo(item1.condition!),
                  order: GroupedListOrder.ASC,
                  useStickyGroupSeparators: true,
                  groupSeparatorBuilder: (String value) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    color: Theme.of(context).colorScheme.tertiary,
                    child: Text(
                      LocaleKeys.electrodes.tr() + ": " + value,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                  itemBuilder: (c, element) {
                    return Card(
                        color: Theme.of(context).colorScheme.primary,
                        elevation: 0.0,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 3.0),
                        child: SizedBox(
                            child: ListTile(
                                tileColor: element.success == "success"
                                    ? Theme.of(context).colorScheme.secondary
                                    : element.success == "unsuccess"
                                        ? Theme.of(context)
                                            .colorScheme
                                            .surfaceTint
                                        : Colors.grey[200],
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.0),
                                leading: element.success == 'undef'
                                    ? Container(
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                            element.program,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        width: 30,
                                        height: 30,
                                        child: Center(
                                          child: Text(
                                            "д",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                        ),
                                      ),
                                title: Table(
                                    defaultVerticalAlignment:
                                        TableCellVerticalAlignment.middle,
                                    border: TableBorder.all(
                                        width: 1.0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                    children: [
                                      TableRow(
                                        children: [
                                          (element.condition ==
                                                  LocaleKeys.fixamp.tr())
                                              ? Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 5),
                                                        child: Text(
                                                          LocaleKeys.amps.tr(),
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .displaySmall,
                                                        )),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      element.amplit.toString(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displaySmall,
                                                    ),
                                                    element.hideamplt
                                                        ? Icon(Icons
                                                            .visibility_off)
                                                        : Icon(Icons.visibility)
                                                  ],
                                                )
                                              : Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      5),
                                                          child: Text(
                                                            LocaleKeys.amps
                                                                .tr(),
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .displaySmall,
                                                          ),
                                                        ),
                                                        element.amplit != null
                                                            ? Text(
                                                                element.amplit
                                                                    .toString(),
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .displaySmall,
                                                              )
                                                            : Container()
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5),
                                                      child: Text(
                                                        element.condition
                                                            .toString(),
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .displaySmall,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(width: 5),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5),
                                                child: Text(
                                                  LocaleKeys.freqs.tr() +
                                                      ': ' +
                                                      element.freq.toString(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall,
                                                ),
                                              ),
                                              element.hidefreq
                                                  ? Icon(Icons.visibility_off)
                                                  : Icon(Icons.visibility),
                                            ],
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 5),
                                                  child: Text(
                                                    LocaleKeys.durs.tr() +
                                                        ': ' +
                                                        element.dur.toString(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displaySmall,
                                                  ),
                                                ),
                                                element.hidedur
                                                    ? Icon(Icons.visibility_off)
                                                    : Icon(Icons.visibility)
                                              ])
                                        ],
                                      )
                                    ]))));
                  },
                )
              : Center(
                  child: Text(
                  LocaleKeys.notask.tr(),
                  style: Theme.of(context).textTheme.labelLarge,
                )),
        ));
  }
}
