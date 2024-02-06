// ignore_for_file: unused_local_variable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../collections/current_test.dart';
import '../../../../../collections/patient.dart';
import '../../../../../core/ui/widgets/app_divider.dart';
import '../../../../../core/ui/widgets/app_text_field.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../repository/feedbackscs_database.dart';
import '../../../../doc/tasks/controllers/before_task_controller.dart';
import '../../../../../core/router/route_names.dart';
import '../controllers/current_short_controller.dart';
import '../controllers/success_short_lie_controller.dart';
import '../controllers/unsuccess_short_lie_controller.dart';

class ShortTest3 extends StatefulWidget {
  const ShortTest3({super.key});

  @override
  State<ShortTest3> createState() => _ShortTest3State();
}

class _ShortTest3State extends State<ShortTest3> {
  final currentShortTaskControler = Get.find<CurrentShortTaskControler>();
  final unsuccessShortTaskLieControler =
      Get.find<UnsuccessShortTaskLieControler>();
  final successShortTaskLieControler = Get.find<SuccessShortTaskLieControler>();

  bool _isSymptom1 = false;
  bool _isSymptom2 = false;
  bool _isSymptom3 = false;
  bool _isbigsideeffects = false;
  bool _islongestsuitable = true;
  final _sideeffectsCtrl = TextEditingController();
  final _placeparestesiaCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _sideeffectsCtrl.dispose();
    _placeparestesiaCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int painlevel;
    bool isSymptom1;
    bool isSymptom2;
    bool isSymptom3;
    String sideeffects;
    String placeparestesia;
    bool islongestsuitable;
    bool isbigsideeffects;
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    int painlevel0 = currentpatient[0].levelmaxpain;

    List<CurrentTest> currenttest = feedbackSCSDatabase.currentTest;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          foregroundColor: Colors.white,
          titleSpacing: 0,
          title: Text(
              '${currentShortTaskControler.currentshorttasks[0].position}: ${LocaleKeys.program.tr()} - ${currentShortTaskControler.currentshorttasks[0].program}')),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SingleChildScrollView(
        child: ColoredBox(
          color: Theme.of(context).colorScheme.secondary,
          child: Column(children: [
            Get.find<BeforeTaskController>().beforetasks.isNotEmpty &&
                    Get.find<BeforeTaskController>()
                        .beforetasks[0]
                        .beforeprogram
                        .isNotEmpty
                ? ColoredBox(
                    color: Theme.of(context).colorScheme.onPrimary,
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
                              '${LocaleKeys.changeprog.tr()} ${Get.find<BeforeTaskController>().beforetasks[0].beforeprogram}- 10 ${LocaleKeys.min.tr()}',
                              style: Theme.of(context).textTheme.displayLarge,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Container(),
            Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    Container(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Text('3. ${LocaleKeys.evaluateresult.tr()}',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelLarge),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '1. ${LocaleKeys.painlevel.tr()}',
                      style: Theme.of(context).textTheme.displaySmall,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 14,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 20),
                        valueIndicatorTextStyle: const TextStyle(
                            color: Colors.white, fontSize: 30.0),
                        activeTrackColor: Theme.of(context).colorScheme.primary,
                        inactiveTrackColor:
                            Theme.of(context).colorScheme.tertiary,
                        thumbColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        overlayColor: Theme.of(context).colorScheme.primary,
                        valueIndicatorColor:
                            Theme.of(context).colorScheme.primary,
                        activeTickMarkColor: Colors.transparent,
                        inactiveTickMarkColor: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '0',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          Expanded(
                            child: Slider(
                              value: painlevel0.toDouble(),
                              min: 0,
                              max: 10,
                              divisions: 10,
                              label: painlevel0.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  painlevel0 = value.round().toInt();
                                });
                              },
                            ),
                          ),
                          Text(
                            '10',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(),
                    Text(
                      '${LocaleKeys.currentpainlevel.tr()}: $painlevel0',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const AppDivider(),
                    Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(
                              LocaleKeys.diseasedecreased.tr(),
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Text(
                              currentpatient[0].sympotoms1,
                              style: Theme.of(context).textTheme.displaySmall,
                              textAlign: TextAlign.start,
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    LocaleKeys.yes.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                  ),
                                  const Spacer(),
                                  Transform.scale(
                                    scale: 1,
                                    child: Switch(
                                      value: _isSymptom1,
                                      onChanged: (value) {
                                        setState(() {
                                          _isSymptom1 = value;
                                        });
                                      },
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    LocaleKeys.no.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              currentpatient[0].sympotoms2,
                              style: Theme.of(context).textTheme.displaySmall,
                              textAlign: TextAlign.start,
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(LocaleKeys.yes.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge),
                                  const Spacer(),
                                  Transform.scale(
                                    scale: 1,
                                    child: Switch(
                                      value: _isSymptom2,
                                      onChanged: (value) {
                                        setState(() {
                                          _isSymptom2 = value;
                                        });
                                      },
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(LocaleKeys.no.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                            currentpatient[0].sympotoms3!.isEmpty
                                ? Container()
                                : Column(children: [
                                    Text(
                                      currentpatient[0].sympotoms3!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                      textAlign: TextAlign.start,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(5),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blueAccent),
                                        borderRadius: BorderRadius.circular(10),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(LocaleKeys.yes.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge),
                                          const Spacer(),
                                          Transform.scale(
                                            scale: 1,
                                            child: Switch(
                                              value: _isSymptom3,
                                              onChanged: (value) {
                                                setState(() {
                                                  _isSymptom3 = value;
                                                });
                                              },
                                            ),
                                          ),
                                          const Spacer(),
                                          Text(LocaleKeys.no.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            const AppDivider(),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppTextField(
                        title: LocaleKeys.sideeffects.tr(),
                        controller: _sideeffectsCtrl,
                        countrow: 4,
                      ),
                    ),
                    const AppDivider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(LocaleKeys.bigsideeffects.tr(),
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Text(LocaleKeys.no.tr(),
                              style: Theme.of(context).textTheme.displayLarge),
                          const Spacer(),
                          Transform.scale(
                            scale: 1,
                            child: Switch(
                              value: _isbigsideeffects,
                              onChanged: (value) {
                                setState(() {
                                  _isbigsideeffects = value;
                                });
                              },
                            ),
                          ),
                          const Spacer(),
                          Text(LocaleKeys.yes.tr(),
                              style: Theme.of(context).textTheme.displayLarge),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                    const AppDivider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppTextField(
                        title: LocaleKeys.placeparestesia.tr(),
                        controller: _placeparestesiaCtrl,
                        countrow: 4,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AppDivider(),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(LocaleKeys.longtestsuitable.tr(),
                            style: Theme.of(context).textTheme.displaySmall)),
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      child: Row(
                        children: [
                          Text(
                            LocaleKeys.no.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          const Spacer(),
                          Transform.scale(
                            scale: 1,
                            child: Switch(
                              value: _islongestsuitable,
                              onChanged: (value) {
                                setState(() {
                                  _islongestsuitable = value;
                                });
                              },
                            ),
                          ),
                          const Spacer(),
                          Text(
                            LocaleKeys.yes.tr(),
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ],
                      ),
                    ),
                    const AppDivider(),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _formKey.currentState?.save();

                          currentShortTaskControler.addDateSt3(
                            painlevel = painlevel0,
                            isSymptom1 = _isSymptom1,
                            isSymptom2 = _isSymptom2,
                            isSymptom3 = _isSymptom3,
                            sideeffects = _sideeffectsCtrl.text,
                            isbigsideeffects = _isbigsideeffects,
                            islongestsuitable = _islongestsuitable,
                            placeparestesia = _placeparestesiaCtrl.text,
                          );
                          //
                          String newactivetask;
                          context
                              .read<FeedbackSCSDatabase>()
                              .updateActiveTask('st4');
                          context.pushNamed(RouteNames.shorttest4);
                        },
                        child: Text(
                          LocaleKeys.savetest.tr(),
                          style: Theme.of(context).textTheme.labelLarge,
                        )),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
