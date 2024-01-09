import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';
import 'package:feedbackscs2024/features/doc/tasks/controllers/double_short_task_controller.dart';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../services/entities/data/neuromodels.dart';
import '../../../../../../services/entities/data/test_const.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';

import '../../../../services/entities/data/model/neuromodel.dart';
import '../../patient/controllers/patient_controller.dart';
import '../controllers/candidate_short_task_lie_controller.dart';
import '../controllers/candidate_short_task_move_controller.dart';
import '../controllers/candidate_short_task_seat_controller.dart';
import '../controllers/short_task_controller.dart';
import '../controllers/short_task_lie_controller.dart';
import '../controllers/short_task_move_controller.dart';
import '../controllers/short_task_seat_controller.dart';

class DocAddSingleTask extends StatefulWidget {
  const DocAddSingleTask({super.key});

  @override
  State<DocAddSingleTask> createState() => _DocAddSingleTaskState();
}

class _DocAddSingleTaskState extends State<DocAddSingleTask> {
  final _formkey = GlobalKey<FormState>();

  final _candidateshortTaskMoveController =
      Get.find<CandidateShortTaskMoveControler>();
  final _candidateshortTaskLieController =
      Get.find<CandidateShortTaskLieControler>();
  final _candidateshortTaskSeatController =
      Get.find<CandidateShortTaskSeatControler>();

  final _shortTaskMoveController = Get.find<ShortTaskMoveControler>();
  final _shortTaskLieController = Get.find<ShortTaskLieControler>();
  final _shortTaskSeatController = Get.find<ShortTaskSeatControler>();
  final _doubleshorttaskController = Get.find<DoubleShortTaskControler>();
  late List<String> undoublelist;

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
    final _listshorttaskmove = _shortTaskMoveController.shorttaskmoves.toList();
    final _listshorttaskseat = _shortTaskSeatController.shorttaskseats.toList();
    final _listshorttasklie = _shortTaskLieController.shorttasklies.toList();

    var undoublelistmove;
    var undoublelistseat;
    var undoublelistlie;
    final _candidateshorttasklistmove =
        _candidateshortTaskMoveController.candidateshorttaskmoves.toList();
    final _candidateshorttasklistseat =
        _candidateshortTaskSeatController.candidateshorttaskseats.toList();
    final _candidateshorttasklistlie =
        _candidateshortTaskLieController.candidateshorttasklies.toList();
    undoublelistmove = [];
    if (_candidateshorttasklistmove.isNotEmpty)
      for (var index = 0; index < _candidateshorttasklistmove.length; index++)
        undoublelistmove.add(_listshorttaskmove
            .where((_listshorttaskmove) => _listshorttaskmove.id
                .contains(_candidateshorttasklistmove[index].id))
            .map((listshorttaskmove) => listshorttaskmove.program)
            .toList()
            .last);
    undoublelistseat = [];
    if (_candidateshorttasklistseat.isNotEmpty) {
      for (var index = 0; index < _candidateshorttasklistseat.length; index++)
        undoublelistseat.add(_listshorttaskseat
            .where((_listshorttaskseat) => _listshorttaskseat.id
                .contains(_candidateshorttasklistseat[index].id))
            .map((listshorttaskseat) => listshorttaskseat.program)
            .toList()
            .last);
    }
    ;
    undoublelistlie = [];
    if (_candidateshorttasklistlie.isNotEmpty) {
      for (var index = 0; index < _candidateshorttasklistlie.length; index++)
        undoublelistlie.add(_listshorttasklie
            .where((_listshorttasklie) => _listshorttasklie.id
                .contains(_candidateshorttasklistlie[index].id))
            .map((listshorttasklie) => listshorttasklie.program)
            .toList()
            .last);
    }
    ;
    Set undoublesetmove = undoublelistmove.toSet();
    Set undoublesetseat = undoublelistseat.toSet();
    Set undoublesetlie = undoublelistlie.toSet();

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
                    GetBuilder(builder: (PatientController patientController) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GetBuilder(
                            builder: (PatientController patientController) {
                          Iterable<Neuro> liststimul = neuromodels.where(
                              (neuromodel) => neuromodel.model.contains(
                                  patientController.patients[0].modelneuro));

                          return Form(
                              key: _formkey,
                              autovalidateMode: AutovalidateMode.always,
                              child: Column(children: [
                                AppColorContainer(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  headerbloc: LocaleKeys.busyprogram.tr(),
                                  widget: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            LocaleKeys.movep.tr() + ": ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: undoublesetmove.isEmpty
                                                ? Text('')
                                                : Wrap(children: [
                                                    for (var index = 0;
                                                        index <
                                                            undoublesetmove
                                                                .length;
                                                        index++)
                                                      Text(undoublesetmove
                                                              .toList()[index] +
                                                          ", "),
                                                  ]),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            LocaleKeys.seat.tr(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: undoublesetseat.isEmpty
                                                ? Text(' - ')
                                                : Wrap(children: [
                                                    for (var index = 0;
                                                        index <
                                                            undoublesetseat
                                                                .length;
                                                        index++)
                                                      Text(undoublesetseat
                                                              .toList()[index] +
                                                          ", "),
                                                  ]),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            LocaleKeys.lie.tr() + ": ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: undoublesetlie.isEmpty
                                                ? Text(' - ')
                                                : Wrap(children: [
                                                    for (var index = 0;
                                                        index <
                                                            undoublesetlie
                                                                .length;
                                                        index++)
                                                      Text(undoublesetlie
                                                              .toList()[index] +
                                                          ", "),
                                                  ]),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                TextFormField(
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
                                SizedBox(
                                  height: 10,
                                ),
                                Text(LocaleKeys.choiceactivity.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButtonFormField<String>(
                                        dropdownColor: Colors.white,
                                        isExpanded: true,
                                        iconSize: 24,
                                        items: activity
                                            .map(bildMenuactivity)
                                            .toList(),
                                        onChanged: (String? value) => setState(
                                            () => _selectedactivity = value!),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(LocaleKeys.conditionamplchoice.tr(),
                                    textAlign: TextAlign.right,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge),
                                const SizedBox(
                                  height: 5,
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: 1),
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
                                            () => _selectedcondchoiceampl =
                                                value!),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                _selectedcondchoiceampl ==
                                        LocaleKeys.fixamp.tr()
                                    ? Column(
                                        children: [
                                          TextFormField(
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
                                                        BorderRadius.circular(
                                                            8.0)),
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
                                    '${liststimul.map((neumodel) => neumodel.minfreq).toList().first} - ${liststimul.map((neumodel) => neumodel.maxfreq).toList().first}',
                                    textAlign: TextAlign.end,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge),
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
                                    '${liststimul.map((neumodel) => neumodel.mindur).toList().first} - ${liststimul.map((neumodel) => neumodel.maxdur).toList().first}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge),
                                AppDivider(),
                                Text(LocaleKeys.choicehide.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall),
                                const SizedBox(
                                  height: 20,
                                ),
                                _hideampfreqdur
                                    ? Container()
                                    : Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                                LocaleKeys.hidefreqdur.tr(),
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
                                                borderRadius:
                                                    BorderRadius.circular(8),
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
                                        _selectedcondchoiceampl ==
                                            LocaleKeys.fixamp.tr()
                                    ? Row(
                                        children: [
                                          Expanded(
                                              child: Text(
                                                  LocaleKeys.hideamplfeqdur
                                                      .tr(),
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
                                                borderRadius:
                                                    BorderRadius.circular(8),
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
                                                        _hideampfreqdur =
                                                            value2;
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    onPressed: () {
                                      add_short_task_candidate();
                                      _doubleshorttaskController
                                              .doubleshorttask.isNotEmpty
                                          ? ElegantNotification.error(
                                              width: 360,
                                              notificationPosition:
                                                  NotificationPosition.center,
                                              animation:
                                                  AnimationType.fromBottom,
                                              title: Text(
                                                  _selectedactivity.toString()),
                                              onProgressFinished: () => {
                                                _doubleshorttaskController
                                                    .clearDoubleShortTask(),
                                                context.pushNamed(
                                                    RouteNames.docaddsingletask)
                                              },
                                              description: Text(
                                                  LocaleKeys.noaddtask.tr()),
                                              onDismiss: () {},
                                            ).show(context)
                                          : ElegantNotification.success(
                                              width: 360,
                                              notificationPosition:
                                                  NotificationPosition.center,
                                              animation:
                                                  AnimationType.fromBottom,
                                              title: Text(
                                                  _selectedactivity.toString()),
                                              onProgressFinished: () => {
                                                context.pushNamed(
                                                    RouteNames.doctasks)
                                              },
                                              description: Text(LocaleKeys
                                                  .addsuccestask
                                                  .tr()),
                                              onDismiss: () {},
                                            ).show(context);
                                    })
                              ]));
                        })
                      ]);
                })),
          ),
        ),
      ),
    );
  }

  void add_short_task_candidate() {
    _formkey.currentState?.save();
    if (add_Short_task_candidate.currentState != null &&
        _formkey.currentState!.validate()) {
      ShortTaskController().add_Single_Short_task(
          _selectedactivity.toString(),
          _programCtrl.text,
          _electrodesCtrl.text,
          _selectedcondchoiceampl.toString(),
          (_selectedcondchoiceampl.toString() == LocaleKeys.fixamp.tr()
              ? double.parse(_ampCtrl.text)
              : 0),
          int.parse(_freqCtrl.text),
          int.parse(_durCtrl.text),
          _hidefreqdur,
          _hideampfreqdur);
    } else {
      ElegantNotification.error(
        width: 360,
        notificationPosition: NotificationPosition.center,
        animation: AnimationType.fromBottom,
        onProgressFinished: () => {},
        description: Text(LocaleKeys.noaddtask.tr()),
        onDismiss: () {},
      ).show(context);
    }

    //
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
