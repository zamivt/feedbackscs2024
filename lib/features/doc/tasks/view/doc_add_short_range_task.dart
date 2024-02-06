import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../collections/before_test_short_test.dart';
import '../../../../collections/patient.dart';
import '../../../../collections/shorttest.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../repository/feedbackscs_database.dart';
import '../../../../services/entities/data/model/neuromodel.dart';
import '../../../../services/entities/data/neuromodels.dart';
import '../../../../services/entities/data/test_const.dart';

import '../controllers/double_short_task_controller.dart';

class DocAddRangeTask extends StatefulWidget {
  const DocAddRangeTask({super.key});

  @override
  State<DocAddRangeTask> createState() => _DocAddRangeTaskState();
}

class _DocAddRangeTaskState extends State<DocAddRangeTask> {
  final _formkey = GlobalKey<FormState>();

  final _doubleshorttaskController = Get.find<DoubleShortTaskControler>();

  int _startfreq = 0;
  int _stopfreq = 0;
  int _stepfreq = 0;
  int _startdur = 0;
  int _stopdur = 0;
  int _stepdur = 0;
  int _amp = 0;
  int index = 1;

  String? _selectedcondchoiceampl;

  String? _selectedactivity;
  final requiredvalidator =
      RequiredValidator(errorText: '${LocaleKeys.requiredfield.tr()}*');
  final _programCtrl = TextEditingController();
  final _electrodesCtrl = TextEditingController();
  final _ampCtrl = TextEditingController();
  final _startfreqCtrl = TextEditingController();
  final _stopfreqCtrl = TextEditingController();
  final _stepfreqCtrl = TextEditingController();
  final _startdurCtrl = TextEditingController();
  final _stopdurCtrl = TextEditingController();
  final _stepdurCtrl = TextEditingController();

  @override
  void dispose() {
    _programCtrl.dispose();
    _electrodesCtrl.dispose();
    _ampCtrl.dispose();
    _startfreqCtrl.dispose();
    _stopfreqCtrl.dispose();
    _stepfreqCtrl.dispose();
    _startdurCtrl.dispose();
    _stopdurCtrl.dispose();
    _stepdurCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<FeedbackSCSDatabase>(context, listen: false)
        .readCommonShortTestUndef();
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readCurrentTest();
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readBeforeTest();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    List<IBeforeTest> beforetest = feedbackSCSDatabase.beforeTest;
    Iterable<Neuro> liststimul = neuromodels.where((neuromodel) =>
        neuromodel.model.contains(currentpatient[0].modelneuro));
    final condchoiceampl = [
      LocaleKeys.fixamp.tr(),
      LocaleKeys.noparestesia.tr(),
      LocaleKeys.painmin.tr() + currentpatient[0].prioritylevelpain.toString()
    ];

    List<IShortTest> undefshorttest = feedbackSCSDatabase.undefshortTest;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.rangetest.tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Form(
                          key: _formkey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(children: [
                            undefshorttest.isEmpty
                                ? const Text('')
                                : Wrap(children: [
                                    Text("${LocaleKeys.busyprogram.tr()}: ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge),
                                    for (var index = 0;
                                        index < undefshorttest.length;
                                        index++)
                                      Text(
                                        "${undefshorttest.toList()[index].program}, ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge,
                                      ),
                                    beforetest.isEmpty
                                        ? const Text('')
                                        : Text(
                                            "${beforetest.toList()[1].program}, ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                          ),
                                  ]),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 40) /
                                          2,
                                  child: TextFormField(
                                    controller: _programCtrl,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    maxLength: 1,
                                    validator: MultiValidator([
                                      requiredvalidator,
                                    ]),
                                    minLines: 1,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                        labelText: LocaleKeys.program.tr(),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                        focusColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 40) /
                                          2,
                                  child: TextFormField(
                                    controller: _electrodesCtrl,
                                    validator: MultiValidator([
                                      requiredvalidator,
                                    ]),
                                    minLines: 1,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        labelText:
                                            LocaleKeys.electrodeformula.tr(),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                        focusColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(LocaleKeys.choiceactivity.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge),
                                    Container(
                                      width: (MediaQuery.sizeOf(context).width -
                                              40) /
                                          2,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.black, width: 1),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButtonFormField<String>(
                                          dropdownColor: Colors.white,
                                          isExpanded: true,
                                          iconSize: 24,
                                          items: activity
                                              .map(bildMenuactivity)
                                              .toList(),
                                          onChanged: (String? value) =>
                                              setState(() =>
                                                  _selectedactivity = value!),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(LocaleKeys.conditionamplchoice.tr(),
                                        textAlign: TextAlign.right,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge),
                                    Container(
                                      width: (MediaQuery.sizeOf(context).width -
                                              40) /
                                          2,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.black, width: 1),
                                      ),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButtonFormField<String>(
                                          dropdownColor: Colors.white,
                                          isExpanded: true,
                                          iconSize: 24,
                                          items: condchoiceampl
                                              .map(_bildMenucondchoiceampl)
                                              .toList(),
                                          onChanged: (String? value) =>
                                              setState(() =>
                                                  _selectedcondchoiceampl =
                                                      value!),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            _selectedcondchoiceampl == LocaleKeys.fixamp.tr()
                                ? Column(
                                    children: [
                                      TextFormField(
                                        controller: _ampCtrl,
                                        onChanged: (value) => setState(() {
                                          if (value.isNotEmpty) {
                                            _amp = int.parse(value);
                                          }
                                        }),
                                        validator: MultiValidator([
                                          requiredvalidator,
                                          RangeValidator(
                                              min: liststimul
                                                  .map((neumodel) =>
                                                      neumodel.minampl)
                                                  .toList()
                                                  .first,
                                              max: liststimul
                                                  .map((neumodel) =>
                                                      neumodel.maxampl)
                                                  .toList()
                                                  .first,
                                              errorText:
                                                  LocaleKeys.wrongdate.tr())
                                        ]),
                                        minLines: 1,
                                        maxLines: 1,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: LocaleKeys.amp.tr(),
                                            labelStyle: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                            focusColor: Colors.white,
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            fillColor: Colors.white,
                                            filled: true),
                                      ),
                                      Text(
                                          '${liststimul.map((neumodel) => neumodel.minampl).toList().first} - ${liststimul.map((neumodel) => neumodel.maxampl).toList().first}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                    ],
                                  )
                                : Container(),
                            Text(
                                '${LocaleKeys.freq.tr()} ( ${liststimul.map((neumodel) => neumodel.minfreq).toList().first} - ${liststimul.map((neumodel) => neumodel.maxfreq).toList().first} )',
                                textAlign: TextAlign.right,
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 40) /
                                          3,
                                  child: TextFormField(
                                    controller: _startfreqCtrl,
                                    onChanged: (value) => setState(() {
                                      if (value.isNotEmpty) {
                                        _startfreq = int.parse(value);
                                      }
                                    }),
                                    validator: MultiValidator([
                                      requiredvalidator,
                                      RangeValidator(
                                          min: liststimul
                                              .map((neumodel) =>
                                                  neumodel.minfreq)
                                              .toList()
                                              .first,
                                          max: liststimul
                                              .map((neumodel) =>
                                                  neumodel.maxfreq)
                                              .toList()
                                              .first,
                                          errorText: LocaleKeys.wrongdate.tr())
                                    ]),
                                    minLines: 1,
                                    maxLines: 1,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: LocaleKeys.startvalue.tr(),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                        focusColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 40) /
                                          3,
                                  child: TextFormField(
                                    controller: _stopfreqCtrl,
                                    onChanged: (value) => setState(() {
                                      if (value.isNotEmpty) {
                                        _stopfreq = int.parse(value);
                                      }
                                    }),
                                    validator: MultiValidator([
                                      requiredvalidator,
                                      RangeValidator(
                                          min: liststimul
                                              .map((neumodel) =>
                                                  neumodel.minfreq)
                                              .toList()
                                              .first,
                                          max: liststimul
                                              .map((neumodel) =>
                                                  neumodel.maxfreq)
                                              .toList()
                                              .first,
                                          errorText: LocaleKeys.wrongdate.tr())
                                    ]),
                                    minLines: 1,
                                    maxLines: 1,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: LocaleKeys.endvalue.tr(),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                        focusColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 40) /
                                          3,
                                  child: TextFormField(
                                    controller: _stepfreqCtrl,
                                    onChanged: (value) => setState(() {
                                      if (value.isNotEmpty) {
                                        _stepfreq = int.parse(value);
                                      }
                                    }),
                                    validator: MultiValidator([
                                      requiredvalidator,
                                    ]),
                                    minLines: 1,
                                    maxLines: 1,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: LocaleKeys.stepvalue.tr(),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                        focusColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                                '${LocaleKeys.dur.tr()} ( ${liststimul.map((neumodel) => neumodel.mindur).toList().first} - ${liststimul.map((neumodel) => neumodel.maxdur).toList().first} )',
                                textAlign: TextAlign.right,
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 40) /
                                          3,
                                  child: TextFormField(
                                    controller: _startdurCtrl,
                                    onChanged: (value) => setState(() {
                                      if (value.isNotEmpty) {
                                        _startdur = int.parse(value);
                                      }
                                    }),
                                    validator: MultiValidator([
                                      requiredvalidator,
                                      RangeValidator(
                                          min: liststimul
                                              .map(
                                                  (neumodel) => neumodel.mindur)
                                              .toList()
                                              .first,
                                          max: liststimul
                                              .map(
                                                  (neumodel) => neumodel.maxdur)
                                              .toList()
                                              .first,
                                          errorText: LocaleKeys.wrongdate.tr())
                                    ]),
                                    minLines: 1,
                                    maxLines: 1,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: LocaleKeys.startvalue.tr(),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                        focusColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 40) /
                                          3,
                                  child: TextFormField(
                                    controller: _stopdurCtrl,
                                    onChanged: (value) => setState(() {
                                      if (value.isNotEmpty) {
                                        _stopdur = int.parse(value);
                                      }
                                    }),
                                    validator: MultiValidator([
                                      requiredvalidator,
                                      RangeValidator(
                                          min: _startdur,
                                          max: liststimul
                                              .map(
                                                  (neumodel) => neumodel.maxdur)
                                              .toList()
                                              .first,
                                          errorText: LocaleKeys.wrongdate.tr())
                                    ]),
                                    minLines: 1,
                                    maxLines: 1,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: LocaleKeys.endvalue.tr(),
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                        focusColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0)),
                                        fillColor: Colors.white,
                                        filled: true),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 40) /
                                          3,
                                  child: SizedBox(
                                    width: double.infinity - 100,
                                    child: TextFormField(
                                      controller: _stepdurCtrl,
                                      onChanged: (value) => setState(() {
                                        if (value.isNotEmpty) {
                                          _stepdur = int.parse(value);
                                        }
                                      }),
                                      validator: MultiValidator([
                                        requiredvalidator,
                                      ]),
                                      minLines: 1,
                                      maxLines: 1,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          labelText: LocaleKeys.stepvalue.tr(),
                                          labelStyle: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                          focusColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0)),
                                          fillColor: Colors.white,
                                          filled: true),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const AppDivider(),
                            ((_startdur > 0) &&
                                        (_stopdur > 0) &&
                                        (_stepdur > 0) &&
                                        (_startfreq > 0) &&
                                        (_stopfreq > 0) &&
                                        (_stepfreq > 0) &&
                                        (_amp > 0 ||
                                            _selectedcondchoiceampl !=
                                                LocaleKeys.fixamp.tr())) &
                                    (_stopdur > _startdur) &
                                    (_stopfreq > _startfreq)
                                ? AppColorContainer(
                                    color: Colors.grey.shade200,
                                    headerbloc: LocaleKeys.counttask.tr() +
                                        ((((_stopdur - _startdur) ~/ _stepdur) +
                                                    1) *
                                                (((_stopfreq - _startfreq) ~/
                                                        _stepfreq) +
                                                    1))
                                            .toString(),
                                    widget: Column(
                                      children: [
                                        Container(
                                          color: Colors.grey.shade300,
                                          width: double.infinity,
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              Text(
                                                LocaleKeys.timetest.tr(),
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge,
                                              ),
                                              Text(
                                                ((((((_stopdur - _startdur) ~/
                                                                            _stepdur) +
                                                                        1) *
                                                                    (((_stopfreq -
                                                                                _startfreq) ~/
                                                                            _stepfreq) +
                                                                        1)) *
                                                                TimeTestConst
                                                                    .timeshorttest) ~/
                                                            60)
                                                        .toString() +
                                                    LocaleKeys.hours.tr() +
                                                    ((((((_stopdur - _startdur) ~/
                                                                            _stepdur) +
                                                                        1) *
                                                                    (((_stopfreq -
                                                                                _startfreq) ~/
                                                                            _stepfreq) +
                                                                        1)) *
                                                                TimeTestConst
                                                                    .timeshorttest) %
                                                            60)
                                                        .toString() +
                                                    LocaleKeys.min.tr(),
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                LocaleKeys.withprepprog.tr(),
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge,
                                              ),
                                              Text(
                                                ((((((_stopdur - _startdur) ~/
                                                                            _stepdur) +
                                                                        1) *
                                                                    (((_stopfreq -
                                                                                _startfreq) ~/
                                                                            _stepfreq) +
                                                                        1)) *
                                                                (TimeTestConst
                                                                        .timeshorttest +
                                                                    TimeTestConst
                                                                        .timepausetest)) ~/
                                                            60)
                                                        .toString() +
                                                    LocaleKeys.hours.tr() +
                                                    ((((((_stopdur - _startdur) ~/
                                                                            _stepdur) +
                                                                        1) *
                                                                    (((_stopfreq -
                                                                                _startfreq) ~/
                                                                            _stepfreq) +
                                                                        1)) *
                                                                (TimeTestConst
                                                                        .timeshorttest +
                                                                    TimeTestConst
                                                                        .timepausetest)) %
                                                            60)
                                                        .toString() +
                                                    LocaleKeys.min.tr(),
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                        ElevatedButton(
                                            child: Text(
                                              LocaleKeys.save.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge,
                                            ),
                                            onPressed: () {
                                              add_short_range_task_candidate();
                                              _doubleshorttaskController
                                                      .doubleshorttask
                                                      .isNotEmpty
                                                  ? ElegantNotification.error(
                                                      toastDuration:
                                                          const Duration(
                                                              seconds: 20),
                                                      width: 360,
                                                      height: 400,
                                                      notificationPosition:
                                                          NotificationPosition
                                                              .center,
                                                      animation: AnimationType
                                                          .fromBottom,
                                                      title: Text(
                                                          _selectedactivity
                                                              .toString()),
                                                      onProgressFinished: () =>
                                                          {
                                                        _doubleshorttaskController
                                                            .clearDoubleShortTask(),
                                                        context.pushNamed(
                                                            RouteNames.doctasks)
                                                      },
                                                      description:
                                                          SingleChildScrollView(
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                'Задания не будут добавлены, так как они дублируются с заданными ранее',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .displayLarge,
                                                              ),
                                                              Table(
                                                                  border:
                                                                      TableBorder
                                                                          .all(),
                                                                  children: [
                                                                    TableRow(
                                                                        decoration:
                                                                            BoxDecoration(color: Theme.of(context).colorScheme.secondary),
                                                                        children: [
                                                                          Text(
                                                                            LocaleKeys.electrodess.tr(),
                                                                            style:
                                                                                Theme.of(context).textTheme.displayLarge,
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          ),
                                                                          Text(
                                                                            LocaleKeys.amps.tr(),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          ),
                                                                          Text(
                                                                            LocaleKeys.freqs.tr(),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          ),
                                                                          Text(
                                                                            LocaleKeys.durs.tr(),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          )
                                                                        ]),
                                                                    for (int i =
                                                                            0;
                                                                        i < _doubleshorttaskController.doubleshorttask.length;
                                                                        i++)
                                                                      TableRow(
                                                                        children: [
                                                                          Text(
                                                                            _doubleshorttaskController.doubleshorttask[i].electrodes.toString(),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          ),
                                                                          Text(
                                                                            _doubleshorttaskController.doubleshorttask[i].condition != LocaleKeys.fixamp.tr()
                                                                                ? _doubleshorttaskController.doubleshorttask[i].condition.toString()
                                                                                : _doubleshorttaskController.doubleshorttask[i].amplit.toString(),
                                                                            style:
                                                                                Theme.of(context).textTheme.displayLarge,
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                1,
                                                                          ),
                                                                          Text(
                                                                            _doubleshorttaskController.doubleshorttask[i].freq.toString(),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          ),
                                                                          Text(
                                                                            _doubleshorttaskController.doubleshorttask[i].freq.toString(),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          )
                                                                        ],
                                                                      ),
                                                                  ]),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      onDismiss: () {},
                                                    ).show(context)
                                                  : ElegantNotification.success(
                                                      width: 360,
                                                      notificationPosition:
                                                          NotificationPosition
                                                              .center,
                                                      animation: AnimationType
                                                          .fromBottom,
                                                      title: Text(
                                                          _selectedactivity
                                                              .toString()),
                                                      onProgressFinished: () =>
                                                          {
                                                        context.pushNamed(
                                                            RouteNames.doctasks)
                                                      },
                                                      description: Text(
                                                          LocaleKeys
                                                              .addsuccestask
                                                              .tr()),
                                                      onDismiss: () {},
                                                    ).show(context);
                                            }),
                                        const AppDivider(),
                                        TableCandidate(
                                            startdur: _startdur,
                                            stopdur: _stopdur,
                                            stepdur: _stepdur,
                                            startfreq: _startfreq,
                                            stopfreq: _stopfreq,
                                            stepfreq: _stepfreq,
                                            selectedcondchoiceampl:
                                                _selectedcondchoiceampl,
                                            amp: _amp),
                                      ],
                                    ),
                                  )
                                : Text(LocaleKeys.checkcor.tr()),
                            const AppDivider(),
                          ]))
                    ])),
          ),
        ),
      ),
    );
  }

  void add_short_range_task_candidate() {
    _formkey.currentState?.save();
    if (add_Short_task_candidate.currentState != null &&
        _formkey.currentState!.validate()) {}
    context.pushNamed(RouteNames.doctasks);
  }

  GlobalKey<FormState> get add_Short_task_candidate => add_candidate_shorttask;

  GlobalKey<FormState> get add_candidate_shorttask => _formkey;

  DropdownMenuItem<String> bildMenuactivity(String activity) =>
      DropdownMenuItem(
        value: activity,
        child: Text(activity, style: Theme.of(context).textTheme.displaySmall),
      );

  DropdownMenuItem<String> _bildMenucondchoiceampl(String condchoiceampl) =>
      DropdownMenuItem(
        value: condchoiceampl,
        child: Text(condchoiceampl,
            style: Theme.of(context).textTheme.displaySmall),
      );
}

class TableCandidate extends StatelessWidget {
  const TableCandidate({
    super.key,
    required int startdur,
    required int stopdur,
    required int stepdur,
    required int startfreq,
    required int stopfreq,
    required int stepfreq,
    required String? selectedcondchoiceampl,
    required int amp,
  })  : _startdur = startdur,
        _stopdur = stopdur,
        _stepdur = stepdur,
        _startfreq = startfreq,
        _stopfreq = stopfreq,
        _stepfreq = stepfreq,
        _selectedcondchoiceampl = selectedcondchoiceampl,
        _amp = amp;

  final int _startdur;
  final int _stopdur;
  final int _stepdur;
  final int _startfreq;
  final int _stopfreq;
  final int _stepfreq;
  final String? _selectedcondchoiceampl;
  final int _amp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.tablecand.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Table(border: TableBorder.all(), children: [
            TableRow(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary),
                children: [
                  Text(
                    LocaleKeys.amps.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    LocaleKeys.freqs.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    LocaleKeys.durs.tr(),
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  )
                ]),
            for (int ldur = _startdur; ldur <= _stopdur; ldur = ldur + _stepdur)
              for (int lfreq = _startfreq;
                  lfreq <= _stopfreq;
                  lfreq = lfreq + _stepfreq)
                TableRow(
                  children: [
                    Text(
                      _selectedcondchoiceampl == LocaleKeys.fixamp.tr()
                          ? _amp.toString()
                          : _selectedcondchoiceampl!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall,
                      maxLines: 1,
                    ),
                    Text(
                      lfreq.toString(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      ldur.toString(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall,
                    )
                  ],
                ),
          ]),
        )
      ],
    );
  }
}
