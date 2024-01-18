import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
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

  @override
  Widget build(BuildContext context) {
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    Iterable<Neuro> liststimul = neuromodels.where((neuromodel) =>
        neuromodel.model.contains(currentpatient[0].modelneuro));
    final condchoiceampl = [
      LocaleKeys.fixamp.tr(),
      LocaleKeys.noparestesia.tr(),
      LocaleKeys.painmin.tr() + currentpatient[0].prioritylevelpain.toString()
    ];

    List<IShortTest> undefshorttest = feedbackSCSDatabase.undefshortTest;
    List<IShortTest> doubleshorttest = feedbackSCSDatabase.doubleshortTest;

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
                      AppColorContainer(
                        color: Theme.of(context).colorScheme.tertiary,
                        headerbloc: LocaleKeys.busyprogram.tr(),
                        widget: Column(
                          children: [
                            undefshorttest.isEmpty
                                ? Text('')
                                : Wrap(children: [
                                    for (var index = 0;
                                        index < undefshorttest.length;
                                        index++)
                                      Text(undefshorttest
                                              .toList()[index]
                                              .program +
                                          ", "),
                                  ]),
                          ],
                        ),
                      ),
                      TextFormField(
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
                            labelStyle: Theme.of(context).textTheme.labelMedium,
                            focusColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _electrodesCtrl,
                        validator: MultiValidator([
                          requiredvalidator,
                        ]),
                        minLines: 1,
                        maxLines: 1,
                        decoration: InputDecoration(
                            labelText: LocaleKeys.electrodeformula.tr(),
                            labelStyle: Theme.of(context).textTheme.labelMedium,
                            focusColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(LocaleKeys.choiceactivity.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              dropdownColor: Colors.white,
                              isExpanded: true,
                              iconSize: 24,
                              items: activity.map(bildMenuactivity).toList(),
                              onChanged: (String? value) =>
                                  setState(() => _selectedactivity = value!),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(LocaleKeys.conditionamplchoice.tr(),
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.displayLarge),
                      const SizedBox(
                        height: 5,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _selectedcondchoiceampl == LocaleKeys.fixamp.tr()
                          ? Column(
                              children: [
                                TextFormField(
                                  controller: _ampCtrl,
                                  validator: MultiValidator([
                                    requiredvalidator,
                                    RangeValidator(
                                        min: liststimul
                                            .map((neumodel) => neumodel.minampl)
                                            .toList()
                                            .first,
                                        max: liststimul
                                            .map((neumodel) => neumodel.maxampl)
                                            .toList()
                                            .first,
                                        errorText: LocaleKeys.wrongdate.tr())
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
                                        .displayLarge),
                              ],
                            )
                          : Container(),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
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
                            labelStyle: Theme.of(context).textTheme.labelMedium,
                            focusColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                      Text(
                          '${liststimul.map((neumodel) => neumodel.minfreq).toList().first} - ${liststimul.map((neumodel) => neumodel.maxfreq).toList().first}',
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.displayLarge),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
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
                            labelStyle: Theme.of(context).textTheme.labelMedium,
                            focusColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                      Text(
                          '${liststimul.map((neumodel) => neumodel.mindur).toList().first} - ${liststimul.map((neumodel) => neumodel.maxdur).toList().first}',
                          style: Theme.of(context).textTheme.displayLarge),
                      AppDivider(),
                      Text(LocaleKeys.choicehide.tr(),
                          style: Theme.of(context).textTheme.displaySmall),
                      const SizedBox(
                        height: 20,
                      ),
                      _hideampfreqdur
                          ? Container()
                          : Row(
                              children: [
                                Expanded(
                                  child: Text(LocaleKeys.hidefreqdur.tr(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all()),
                                  child: Row(
                                    children: [
                                      Text(LocaleKeys.no.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.visibility),
                                      Transform.scale(
                                        scale: 1,
                                        child: Switch(
                                          value: _hidefreqdur,
                                          onChanged: (value1) {
                                            setState(() {
                                              _hidefreqdur = value1;
                                            });
                                          },
                                        ),
                                      ),
                                      Icon(
                                        Icons.visibility_off,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(LocaleKeys.yes.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                      AppDivider(),
                      !_hidefreqdur &&
                              _selectedcondchoiceampl == LocaleKeys.fixamp.tr()
                          ? Row(
                              children: [
                                Expanded(
                                    child: Text(LocaleKeys.hideamplfeqdur.tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge)),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all()),
                                  child: Row(
                                    children: [
                                      Text(LocaleKeys.no.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.visibility),
                                      Transform.scale(
                                        scale: 1,
                                        child: Switch(
                                          value: _hideampfreqdur,
                                          onChanged: (value2) {
                                            setState(() {
                                              _hideampfreqdur = value2;
                                            });
                                          },
                                        ),
                                      ),
                                      Icon(Icons.visibility_off),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(LocaleKeys.yes.tr(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                AppDivider(),
                              ],
                            )
                          : Container(),
                      AppDivider(),
                      ElevatedButton(
                          child: Text(
                            LocaleKeys.save.tr(),
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          onPressed: () {
                            context
                                .read<FeedbackSCSDatabase>()
                                .addSingleShortTest(
                                  _selectedactivity!,
                                  _programCtrl.text,
                                  _electrodesCtrl.text,
                                  _selectedcondchoiceampl!,
                                  double.parse(_ampCtrl.text),
                                  int.parse(_freqCtrl.text),
                                  int.parse(_durCtrl.text),
                                  _hidefreqdur,
                                  _hideampfreqdur,
                                );
                            doubleshorttest.isNotEmpty
                                ? ElegantNotification.error(
                                    width: 360,
                                    notificationPosition:
                                        NotificationPosition.center,
                                    animation: AnimationType.fromBottom,
                                    title: Text(_selectedactivity.toString()),
                                    onProgressFinished: () => {
                                      //убрать дубль
                                      context.pushNamed(
                                          RouteNames.docaddsingletask)
                                    },
                                    description:
                                        Text(LocaleKeys.noaddtask.tr()),
                                    onDismiss: () {},
                                  ).show(context)
                                : ElegantNotification.success(
                                    width: 360,
                                    notificationPosition:
                                        NotificationPosition.center,
                                    animation: AnimationType.fromBottom,
                                    title: Text(_selectedactivity.toString()),
                                    onProgressFinished: () => {
                                      context.pushNamed(RouteNames.doctasks)
                                    },
                                    description:
                                        Text(LocaleKeys.addsuccestask.tr()),
                                    onDismiss: () {},
                                  ).show(context);
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
