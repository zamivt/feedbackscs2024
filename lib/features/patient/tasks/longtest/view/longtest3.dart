// ignore_for_file: unused_local_variable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../collections/current_test.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';
import '../../../../doc/tasks/controllers/before_task_controller.dart';
import '../../../../../core/router/route_names.dart';
import '../../../../../core/ui/widgets/common_widgets.dart';
import '../controllers/current_long__controller.dart';

class LongTest3 extends StatefulWidget {
  LongTest3({super.key});

  @override
  State<LongTest3> createState() => _LongTest3State();
}

class _LongTest3State extends State<LongTest3> {
  double longrating = 3;
  final _reasonstoptestCtrl = TextEditingController();
  @override
  void dispose() {
    _reasonstoptestCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentLongTaskControler = Get.find<CurrentLongTaskControler>();
    final String position =
        currentLongTaskControler.currentlongtasks[0].position;

    final String program = currentLongTaskControler.currentlongtasks[0].program;

    final formKey = GlobalKey<FormState>();
    String reasonstoptest;
    double markself;
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<CurrentTest> currenttest = feedbackSCSDatabase.currentTest;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('$position: ${LocaleKeys.program.tr()} - $program'),
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Get.find<BeforeTaskController>().beforetasks.isNotEmpty &&
                        Get.find<BeforeTaskController>()
                            .beforetasks[0]
                            .beforeprogram
                            .isNotEmpty
                    ? ColoredBox(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              FontAwesomeIcons.triangleExclamation,
                              color: Colors.orange,
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 30),
                                width: double.infinity,
                                child: Text(
                                  '${LocaleKeys.changeprog.tr()}${Get.find<BeforeTaskController>().beforetasks[0].beforeprogram}- 10 ${LocaleKeys.min.tr()}',
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
                AppHeader(header: '3. ${LocaleKeys.evaluateresult.tr()}'),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppTextField(
                    title: '1. ${LocaleKeys.reasonfinishtest.tr()}',
                    controller: _reasonstoptestCtrl,
                    countrow: 4,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text('2. ${LocaleKeys.markself.tr()}',
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  color: Theme.of(context).colorScheme.primary,
                  child: Center(
                    child: RatingStars(
                      value: longrating,
                      onValueChanged: (v) {
                        //
                        setState(() {
                          longrating = v;
                        });
                      },
                      starBuilder: (index, color) => Icon(
                        Icons.star,
                        color: color,
                      ),
                      starCount: 5,
                      starSize: 50,
                      valueLabelColor: Theme.of(context).colorScheme.primary,
                      valueLabelTextStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0),
                      valueLabelRadius: 10,
                      maxValue: 5,
                      starSpacing: 0.3,
                      maxValueVisibility: false,
                      valueLabelVisibility: false,
                      valueLabelPadding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 8),
                      valueLabelMargin: const EdgeInsets.only(right: 8),
                      starOffColor: const Color(0xffe7e8ea),
                      starColor: Theme.of(context).colorScheme.surfaceTint,
                    ),
                  ),
                ),
                const AppDivider(),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      formKey.currentState?.save();

                      currentLongTaskControler.addDateSt3(
                          reasonstoptest = _reasonstoptestCtrl.text,
                          markself = longrating);

                      String newactivetask;
                      context
                          .read<FeedbackSCSDatabase>()
                          .updateActiveTask('no tasks');
                      context.pushNamed(RouteNames.patienttasks);
                    },
                    child: Text(LocaleKeys.save.tr(),
                        style: Theme.of(context).textTheme.labelLarge))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
