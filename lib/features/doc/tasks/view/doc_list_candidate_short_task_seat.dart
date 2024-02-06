import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../collections/shorttest.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';

class DocListCandidateShortTaskSeat extends StatelessWidget {
  const DocListCandidateShortTaskSeat({
    super.key,
  });
  void delete_undef_short_test(
      BuildContext context, List<IShortTest> undefmoveshortTest, int index) {
    context
        .read<FeedbackSCSDatabase>()
        .deleteundefShortTest(undefmoveshortTest[index].id);
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readundefShortTestSeat();

    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();

    List<IShortTest> undefseatshortTest =
        feedbackSCSDatabase.undefseatshortTest;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pushNamed(RouteNames.doctasks);
            },
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          title: Text(
            "${LocaleKeys.unfulfilledtasks.tr()} : ${LocaleKeys.cseat.tr()}",
            style: const TextStyle(fontSize: 16),
          ),
        ),
        body: SafeArea(
          child: undefseatshortTest.isNotEmpty
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  itemCount: undefseatshortTest.length,
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
                            delete_undef_short_test(
                                context, undefseatshortTest, index);
                          },
                        ),
                        title: Column(
                          children: [
                            Row(children: [
                              Container(
                                  width: 30,
                                  height: 30,
                                  color: Theme.of(context).colorScheme.primary,
                                  child: Text(
                                    (index + 1).toString(),
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                    textAlign: TextAlign.center,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 30,
                                  height: 30,
                                  color: Theme.of(context).colorScheme.tertiary,
                                  child: Center(
                                    child: Text(
                                      undefseatshortTest[index].program,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                    ),
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${LocaleKeys.electrodess.tr()}: ',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              Expanded(
                                child: Text(
                                  undefseatshortTest[index].electrodes,
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '${LocaleKeys.amps.tr()}: ',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                                undefseatshortTest[index].condition ==
                                        LocaleKeys.fixamp.tr()
                                    ? Text(
                                        undefseatshortTest[index]
                                            .amplit
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      )
                                    : Expanded(
                                        child: Text(
                                          undefseatshortTest[index].condition,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
                                        ),
                                      ),
                                undefseatshortTest[index].hideamplt
                                    ? const Icon(Icons.visibility_off)
                                    : Container()
                              ],
                            )
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '${LocaleKeys.durs.tr()}: ${undefseatshortTest[index].dur}, ${LocaleKeys.freqs.tr()}: ${undefseatshortTest[index].freq}',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            undefseatshortTest[index].hidefreq
                                ? const Icon(Icons.visibility_off)
                                : Container()
                          ],
                        ),
                      ),
                    );
                  }))
              : Center(
                  child: Text(
                  LocaleKeys.notask.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                )),
        ));
  }
}
