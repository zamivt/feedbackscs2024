import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/repository/short_test_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../collections/shorttest.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';

class DocListCandidateShortTaskLie extends StatelessWidget {
  const DocListCandidateShortTaskLie({
    super.key,
  });
  void delete_undef_short_test(
      BuildContext context, List<IShortTest> undefmoveshortTest, int index) {
    context
        .read<ShortTestProvider>()
        .deleteundefShortTest(undefmoveshortTest[index].id);
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<ShortTestProvider>(context, listen: false)
        .readundefShortTestLie();

    final shorttestbase = context.watch<ShortTestProvider>();

    List<IShortTest> undeflieshortTest = shorttestbase.undeflieshortTest;

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
            "${LocaleKeys.unfulfilledtasks.tr()} : ${LocaleKeys.clie.tr()}",
            style: const TextStyle(fontSize: 16),
          ),
        ),
        body: SafeArea(
          child: undeflieshortTest.isNotEmpty
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  itemCount: undeflieshortTest.length,
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
                                context, undeflieshortTest, index);
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
                                      undeflieshortTest[index].program,
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
                                  undeflieshortTest[index].electrodes,
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
                                undeflieshortTest[index].condition ==
                                        LocaleKeys.fixamp.tr()
                                    ? Text(
                                        undeflieshortTest[index]
                                            .amplit
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      )
                                    : Expanded(
                                        child: Text(
                                          undeflieshortTest[index].condition,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
                                        ),
                                      ),
                                undeflieshortTest[index].hideamplt
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
                              '${LocaleKeys.durs.tr()}: ${undeflieshortTest[index].dur}, ${LocaleKeys.freqs.tr()}: ${undeflieshortTest[index].freq}',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            undeflieshortTest[index].hidefreq
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
