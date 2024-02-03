import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:feedbackscs2024/collections/before_test_short_test.dart';
import 'package:feedbackscs2024/collections/shorttest.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../../services/entities/data/neuromodels.dart';
import '../../../../../../services/entities/data/test_const.dart';
import '../../../../collections/patient.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';
import '../../../../services/entities/data/model/neuromodel.dart';

class DocAddSingleTask extends StatefulWidget {
  const DocAddSingleTask({super.key});

  @override
  State<DocAddSingleTask> createState() => _DocAddSingleTaskState();
}

class _DocAddSingleTaskState extends State<DocAddSingleTask> {
  final _formkey = GlobalKey<FormState>();

  final _programCtrl = TextEditingController();
  final _electrodesCtrl = TextEditingController();

  final _ampCtrl = TextEditingController();
  final _freqCtrl = TextEditingController();
  final _durCtrl = TextEditingController();

  late bool _hidefreqdur = false;
  late bool _hideampfreqdur = false;

  String? _selectedcondchoiceampl;

  String? _selectedactivity;
  final requiredvalidator =
      RequiredValidator(errorText: LocaleKeys.requiredfield.tr() + '*');

  @override
  void dispose() {
    _programCtrl.dispose();
    _electrodesCtrl.dispose();
    _ampCtrl.dispose();
    _freqCtrl.dispose();
    _durCtrl.dispose();

    super.dispose();
  }

  void addSingleTask(
      BuildContext context, FeedbackSCSDatabase feedbackSCSDatabase) {
    _formkey.currentState?.save();
    if (add_Short_task_candidate.currentState != null &&
        _formkey.currentState!.validate()) {
      context.read<FeedbackSCSDatabase>().addSingleShortTest(
            _selectedactivity!,
            _programCtrl.text,
            _electrodesCtrl.text,
            _selectedcondchoiceampl!,
            (_selectedcondchoiceampl == LocaleKeys.fixamp.tr())
                ? double.parse(_ampCtrl.text)
                : -1,
            int.parse(_freqCtrl.text),
            int.parse(_durCtrl.text),
            _hidefreqdur,
            _hideampfreqdur,
          );
      Provider.of<FeedbackSCSDatabase>(context, listen: false).currentTest;

      Future.delayed(Duration(milliseconds: 500), () {
        Provider.of<FeedbackSCSDatabase>(context, listen: false).doubleTest;
        feedbackSCSDatabase.doubleTest.length > 0
            ? ElegantNotification.error(
                width: 360,
                notificationPosition: NotificationPosition.center,
                animation: AnimationType.fromBottom,
                title: Text(_selectedactivity.toString()),
                onProgressFinished: () => {
                  context.read<FeedbackSCSDatabase>().updateCountDoubleTest(0),
                  context.read<FeedbackSCSDatabase>().clearDoubleTest(),
                  Provider.of<FeedbackSCSDatabase>(context, listen: false)
                      .doubleTest,
                  context.pushNamed(RouteNames.docaddsingletask)
                },
                description: Text(LocaleKeys.noaddtask.tr()),
                onDismiss: () {
                  context.read<FeedbackSCSDatabase>().updateCountDoubleTest(0);
                  context.read<FeedbackSCSDatabase>().clearDoubleTest();
                  Provider.of<FeedbackSCSDatabase>(context, listen: false)
                      .doubleTest;
                  context.pushNamed(RouteNames.docaddsingletask);
                },
              ).show(context)
            : ElegantNotification.success(
                width: 360,
                notificationPosition: NotificationPosition.center,
                animation: AnimationType.fromBottom,
                title: Text(_selectedactivity.toString()),
                onProgressFinished: () => {
                  context.read<FeedbackSCSDatabase>().updateCountDoubleTest(0),
                  context.pushNamed(RouteNames.doctasks)
                },
                description: Text(LocaleKeys.addsuccestask.tr()),
                onDismiss: () {
                  context.read<FeedbackSCSDatabase>().updateCountDoubleTest(0);
                  context.pushNamed(RouteNames.doctasks);
                },
              ).show(context);
      });
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    List<String> busyprogram;
    busyprogram = [];
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
    // List<CurrentTest> currenttest = feedbackSCSDatabase.currentTest;
    void _toggle1() {
      setState(() {
        _hideampfreqdur = !_hideampfreqdur;
      });
    }

    void _toggle2() {
      setState(() {
        _hidefreqdur = !_hidefreqdur;
      });
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          LocaleKeys.singletest.tr(),
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
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Form(
                    key: _formkey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(children: [
                      undefshorttest.isEmpty
                          ? Text('')
                          : Wrap(children: [
                              Text(LocaleKeys.busyprogram.tr() + ": ",
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              for (var index = 0;
                                  index < undefshorttest.length;
                                  index++)
                                Text(
                                  undefshorttest[index].program + ", ",
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                              beforetest.isEmpty
                                  ? Text('')
                                  : Text(
                                      beforetest[0].program + ", ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                    ),
                            ]),
                      Row(
                        children: [
                          SizedBox(
                            width: (MediaQuery.sizeOf(context).width - 40) / 2,
                            child: TextFormField(
                              controller: _programCtrl,
                              textCapitalization: TextCapitalization.sentences,
                              maxLength: 1,
                              validator: MultiValidator([
                                requiredvalidator,
                              ]),
                              minLines: 1,
                              maxLines: 1,
                              decoration: InputDecoration(
                                  labelText: LocaleKeys.program.tr(),
                                  labelStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                  focusColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                          ),
                          SizedBox(
                            width: (MediaQuery.sizeOf(context).width - 40) / 2,
                            child: TextFormField(
                              controller: _electrodesCtrl,
                              validator: MultiValidator([
                                requiredvalidator,
                              ]),
                              minLines: 1,
                              maxLines: 1,
                              decoration: InputDecoration(
                                  labelText: LocaleKeys.electrodeformula.tr(),
                                  labelStyle:
                                      Theme.of(context).textTheme.labelMedium,
                                  focusColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
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
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              Container(
                                width:
                                    (MediaQuery.sizeOf(context).width - 40) / 2,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButtonFormField<String>(
                                    dropdownColor: Colors.white,
                                    isExpanded: true,
                                    iconSize: 24,
                                    items:
                                        activity.map(bildMenuactivity).toList(),
                                    onChanged: (String? value) => setState(
                                        () => _selectedactivity = value!),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(LocaleKeys.conditionamplchoice.tr(),
                                  textAlign: TextAlign.right,
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              Container(
                                width:
                                    (MediaQuery.sizeOf(context).width - 40) / 2,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButtonFormField<String>(
                                    dropdownColor: Colors.white,
                                    isExpanded: true,
                                    iconSize: 24,
                                    items: condchoiceampl
                                        .map(_bildMenucondchoiceampl)
                                        .toList(),
                                    onChanged: (String? value) => setState(
                                        () => _selectedcondchoiceampl = value!),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      _selectedcondchoiceampl == LocaleKeys.fixamp.tr()
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: (MediaQuery.sizeOf(context).width -
                                          100),
                                      child: TextFormField(
                                        controller: _ampCtrl,
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
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 30),
                                      child: IconButton(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          onPressed: () {
                                            _toggle1();
                                          },
                                          icon: _hideampfreqdur
                                              ? Icon(Icons.visibility_off)
                                              : Icon(Icons.visibility)),
                                    )
                                  ],
                                ),
                                Text(
                                    '${liststimul.map((neumodel) => neumodel.minampl).toList().first} - ${liststimul.map((neumodel) => neumodel.maxampl).toList().first}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge),
                              ],
                            )
                          : Container(),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width:
                                    (MediaQuery.sizeOf(context).width - 80) / 2,
                                child: TextFormField(
                                  controller: _freqCtrl,
                                  validator: MultiValidator([
                                    requiredvalidator,
                                    RangeValidator(
                                        min: liststimul
                                            .map((neumodel) => neumodel.minfreq)
                                            .toList()
                                            .first,
                                        max: liststimul
                                            .map((neumodel) => neumodel.maxfreq)
                                            .toList()
                                            .first,
                                        errorText: LocaleKeys.wrongdate.tr())
                                  ]),
                                  minLines: 1,
                                  maxLines: 1,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      labelText: LocaleKeys.freq.tr(),
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
                              Text(
                                  '${liststimul.map((neumodel) => neumodel.minfreq).toList().first} - ${liststimul.map((neumodel) => neumodel.maxfreq).toList().first}',
                                  textAlign: TextAlign.end,
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width:
                                    (MediaQuery.sizeOf(context).width - 80) / 2,
                                child: TextFormField(
                                  controller: _durCtrl,
                                  validator: MultiValidator([
                                    requiredvalidator,
                                    RangeValidator(
                                        min: liststimul
                                            .map((neumodel) => neumodel.mindur)
                                            .toList()
                                            .first,
                                        max: liststimul
                                            .map((neumodel) => neumodel.maxdur)
                                            .toList()
                                            .first,
                                        errorText: LocaleKeys.wrongdate.tr())
                                  ]),
                                  minLines: 1,
                                  maxLines: 1,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      labelText: LocaleKeys.dur.tr(),
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
                              Text(
                                  '${liststimul.map((neumodel) => neumodel.mindur).toList().first} - ${liststimul.map((neumodel) => neumodel.maxdur).toList().first}',
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 30),
                            child: IconButton(
                                color: Theme.of(context).colorScheme.primary,
                                onPressed: () {
                                  _toggle2();
                                },
                                icon: _hidefreqdur
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility)),
                          )
                        ],
                      ),
                      AppDivider(),
                      ElevatedButton(
                          child: Text(
                            LocaleKeys.save.tr(),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          onPressed: () {
                            addSingleTask(context, feedbackSCSDatabase);
                          })
                    ]))
              ]),
            ),
          ),
        ),
      ),
    );
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
