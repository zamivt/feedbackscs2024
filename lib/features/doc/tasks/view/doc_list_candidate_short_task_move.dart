import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../collections/shorttest.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';

class DocListCandidateShortTaskMove extends StatelessWidget {
  const DocListCandidateShortTaskMove({
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
        .readundefShortTestMove();

    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();

    List<IShortTest> undefmoveshortTest =
        feedbackSCSDatabase.undefmoveshortTest;

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
          child: undefmoveshortTest.isNotEmpty
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  itemCount: undefmoveshortTest.length,
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
                                context, undefmoveshortTest, index);
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
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  width: 30,
                                  height: 30,
                                  color: Theme.of(context).colorScheme.tertiary,
                                  child: Center(
                                    child: Text(
                                      undefmoveshortTest[index].program,
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
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              Expanded(
                                child: Text(
                                  undefmoveshortTest[index].electrodes,
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                LocaleKeys.amps.tr() + ': ',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              undefmoveshortTest[index].condition ==
                                      LocaleKeys.fixamp.tr()
                                  ? Text(
                                      undefmoveshortTest[index]
                                          .amplit
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                    )
                                  : Expanded(
                                      child: Text(
                                        undefmoveshortTest[index].condition,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                    ),
                              undefmoveshortTest[index].hideamplt
                                  ? Icon(Icons.visibility_off)
                                  : Container()
                            ]),
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
                                  undefmoveshortTest[index].dur.toString() +
                                  ', ' +
                                  LocaleKeys.freqs.tr() +
                                  ': ' +
                                  undefmoveshortTest[index].freq.toString(),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            undefmoveshortTest[index].hidefreq
                                ? Icon(Icons.visibility_off)
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
