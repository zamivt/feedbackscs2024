import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/route_names.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../controllers/before_task_controller.dart';

class BeforeProgramTask extends StatelessWidget {
  const BeforeProgramTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.surfaceTint,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          child: Text(LocaleKeys.beforeprog.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 500,
                              child: Column(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.close),
                                    color: Colors.white,
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      child: Text(
                                          LocaleKeys.beforeprogramcomment.tr(),
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
                    icon: Icon(
                      Icons.question_mark,
                      color: Theme.of(context).colorScheme.primary,
                      size: 30,
                    )),
              ),
              GetBuilder(builder: (BeforeTaskController beforeTaskController) {
                return beforeTaskController.beforetasks.isEmpty
                    ? Expanded(
                        flex: 10,
                        child: GestureDetector(
                            onTap: () {
                              context.pushNamed(RouteNames.docdocaddbeforetask);
                            },
                            child: AppCommentText(
                                text: LocaleKeys.beforeprogram.tr())))
                    : Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            AppCommentText(
                                text: LocaleKeys.program.tr() +
                                    ': ' +
                                    beforeTaskController
                                        .beforetasks[0].beforeprogram +
                                    ':'
                                        '\n' +
                                    LocaleKeys.electrodess.tr() +
                                    ':' +
                                    beforeTaskController
                                        .beforetasks[0].beforelectrode +
                                    ', ' +
                                    LocaleKeys.amps.tr() +
                                    ': ' +
                                    beforeTaskController
                                        .beforetasks[0].beforeamp
                                        .toString() +
                                    ', ' +
                                    LocaleKeys.freqs.tr() +
                                    ': ' +
                                    beforeTaskController
                                        .beforetasks[0].beforefreq
                                        .toString() +
                                    ', ' +
                                    LocaleKeys.durs.tr() +
                                    ': ' +
                                    beforeTaskController
                                        .beforetasks[0].beforedur
                                        .toString()),
                          ],
                        ));
              }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
