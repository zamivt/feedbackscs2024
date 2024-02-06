import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/collections/before_test_short_test.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';
import 'doc_edit_before_program.dart';

class BeforeProgramTask extends StatelessWidget {
  const BeforeProgramTask({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readBeforeTest();
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IBeforeTest> beforetest = feedbackSCSDatabase.beforeTest;

    return AppColorContainer(
      color: Theme.of(context).colorScheme.tertiary,
      headerbloc: LocaleKeys.beforeprog.tr(),
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 40,
              color: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.grey.shade200,
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 500,
                                child: Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.close),
                                      color: Colors.blue,
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        color: Colors.grey.shade200,
                                        child: Text(
                                            LocaleKeys.beforeprogramcomment
                                                .tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      icon: const Icon(
                        Icons.question_mark,
                        color: Colors.white,
                      )),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    color: Colors.white,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const DocEditBeforeProgram();
                          });
                    },
                  )
                ],
              ),
            ),
          ),
          beforetest.isEmpty
              ? Expanded(
                  flex: 10,
                  child: GestureDetector(
                      onTap: () {
                        context.pushNamed(RouteNames.docdocaddbeforetask);
                      },
                      child:
                          AppCommentText(text: LocaleKeys.beforeprogram.tr())))
              : Expanded(
                  flex: 10,
                  child: AppCommentText(
                      text:
                          '${LocaleKeys.program.tr()}: ${beforetest[0].program}:\n${LocaleKeys.electrodess.tr()}:${beforetest[0].electrodes}, ${LocaleKeys.amps.tr()}: ${beforetest[0].amplit}, ${LocaleKeys.freqs.tr()}: ${beforetest[0].freq}, ${LocaleKeys.durs.tr()}: ${beforetest[0].dur}')),
        ],
      ),
    );
  }
}
