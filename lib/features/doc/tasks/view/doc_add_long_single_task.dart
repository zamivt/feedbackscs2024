// ignore_for_file: non_constant_identifier_names

import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
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

import '../../../../repository/current_patient_provider.dart';
import '../../../../services/entities/data/model/neuromodel.dart';

import '../controllers/Long_task_controller.dart';

class DocAddLongSingleTask extends StatefulWidget {
  const DocAddLongSingleTask({super.key});

  @override
  State<DocAddLongSingleTask> createState() => _DocAddLongSingleTaskState();
}

class _DocAddLongSingleTaskState extends State<DocAddLongSingleTask> {
  final _formkey = GlobalKey<FormState>();

  final _programCtrl = TextEditingController();
  final _electrodesCtrl = TextEditingController();

  final _ampCtrl = TextEditingController();
  final _freqCtrl = TextEditingController();
  final _durCtrl = TextEditingController();

  late bool _hidefreqdur = false;
  late bool _hideampfreqdur = false;

  String? _selectedactivity;
  final requiredvalidator =
      RequiredValidator(errorText: '${LocaleKeys.requiredfield.tr()}*');
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
    final feedbackSCSDatabase = context.watch<CurrentPatientProvider>();
    List<IPatient> currentpatient = feedbackSCSDatabase.currentPatient;
    Iterable<Neuro> liststimul = neuromodels.where((neuromodel) =>
        neuromodel.model.contains(currentpatient[0].modelneuro));
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Form(
                          key: _formkey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(children: [
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
                                  hintStyle:
                                      Theme.of(context).textTheme.displaySmall,
                                  hintText: LocaleKeys.program.tr(),
                                  focusColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            const SizedBox(
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
                                  hintStyle:
                                      Theme.of(context).textTheme.displaySmall,
                                  hintText: LocaleKeys.electrodeformula.tr(),
                                  focusColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(LocaleKeys.choiceactivity.tr(),
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
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
                            ),
                            const SizedBox(
                              height: 5,
                            ),
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
                                  hintStyle:
                                      Theme.of(context).textTheme.displaySmall,
                                  hintText: LocaleKeys.amp.tr(),
                                  focusColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            Text(
                                '${liststimul.map((neumodel) => neumodel.minampl).toList().first} - ${liststimul.map((neumodel) => neumodel.maxampl).toList().first}',
                                style:
                                    Theme.of(context).textTheme.displayLarge),
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
                                  hintStyle:
                                      Theme.of(context).textTheme.displaySmall,
                                  hintText: LocaleKeys.freq.tr(),
                                  focusColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            Text(
                                '${liststimul.map((neumodel) => neumodel.minfreq).toList().first} - ${liststimul.map((neumodel) => neumodel.maxfreq).toList().first}',
                                textAlign: TextAlign.end,
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            const SizedBox(
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
                                  hintStyle:
                                      Theme.of(context).textTheme.displaySmall,
                                  hintText: LocaleKeys.dur.tr(),
                                  focusColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  fillColor: Colors.white,
                                  filled: true),
                            ),
                            Text(
                                '${liststimul.map((neumodel) => neumodel.mindur).toList().first} - ${liststimul.map((neumodel) => neumodel.maxdur).toList().first}',
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            const AppDivider(),
                            Text(LocaleKeys.choicehide.tr(),
                                style:
                                    Theme.of(context).textTheme.displaySmall),
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
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 8),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        child: Row(
                                          children: [
                                            Text(LocaleKeys.no.tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Transform.scale(
                                              scale: 1.5,
                                              child: Switch(
                                                value: _hidefreqdur,
                                                onChanged: (value1) {
                                                  setState(() {
                                                    _hidefreqdur = value1;
                                                  });
                                                },
                                                inactiveTrackColor: Colors.grey,
                                                activeTrackColor:
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .onPrimaryContainer,
                                                activeColor: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                              ),
                                            ),
                                            const SizedBox(
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
                            const AppDivider(),
                            !_hidefreqdur
                                ? Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                              LocaleKeys.hideamplfeqdur.tr(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge)),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 8),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        child: Row(
                                          children: [
                                            Text(LocaleKeys.no.tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Transform.scale(
                                              scale: 1.5,
                                              child: Switch(
                                                value: _hideampfreqdur,
                                                onChanged: (value2) {
                                                  setState(() {
                                                    _hideampfreqdur = value2;
                                                  });
                                                },
                                                inactiveTrackColor: Colors.grey,
                                                activeTrackColor:
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .onPrimaryContainer,
                                                activeColor: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(LocaleKeys.yes.tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      )
                                    ],
                                  )
                                : Container(),
                            const AppDivider(),
                            ElevatedButton(
                                child: Text(
                                  LocaleKeys.save.tr(),
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                onPressed: () {
                                  add_short_task_candidate();
                                })
                          ]))
                    ])),
          ),
        ),
      ),
    );
  }

  void add_short_task_candidate() {
    _formkey.currentState?.save();
    if (add_Short_task_candidate.currentState != null &&
        _formkey.currentState!.validate()) {
      LongTaskController().add_Single_Long_task(
          _selectedactivity.toString(),
          _programCtrl.text,
          _electrodesCtrl.text,
          double.parse(_ampCtrl.text),
          int.parse(_freqCtrl.text),
          int.parse(_durCtrl.text),
          _hidefreqdur,
          _hideampfreqdur);
    }
    ElegantNotification.success(description: const Text('Задание добавлено'));
    context.pushNamed(RouteNames.doctasks);
  }

  GlobalKey<FormState> get add_Short_task_candidate => add_candidate_shorttask;

  GlobalKey<FormState> get add_candidate_shorttask => _formkey;

  DropdownMenuItem<String> bildMenuactivity(String activity) =>
      DropdownMenuItem(
        value: activity,
        child: Text(activity, style: Theme.of(context).textTheme.displaySmall),
      );
}
