// ignore_for_file: unused_field

import 'package:easy_localization/easy_localization.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:provider/provider.dart';
import '../../../../core/ui/widgets/app_name_field.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';

import '../../../../repository/feedbackscs_database.dart';
import '../../../../services/entities/data/neuromodels.dart';
import '../../../../services/entities/data/test_const.dart';

class PatientForm extends StatefulWidget {
  PatientForm({
    super.key,
  });

  @override
  State<PatientForm> createState() => _PatientFormState();
}

class _PatientFormState extends State<PatientForm> {
  final _formkey = GlobalKey<FormState>();
  final modelneuro = neuromodels.map((e) => e.model);
  final _numberelectrodes = TextEditingController();
  final _fioCtrl = TextEditingController();

  final _emailCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _diagnozCtrl = TextEditingController();
  final _anamnezCtrl = TextEditingController();
  final _levelmaxpainCtrl = TextEditingController();
  final _symptoms1Ctrl = TextEditingController();
  final _symptoms2Ctrl = TextEditingController();
  final _symptoms3Ctrl = TextEditingController();
  final _prioritylevelpainCtrl = TextEditingController();
  final _maxseatCtrl = TextEditingController();
  final _maxlieCtrl = TextEditingController();
  final _maxmoveCtrl = TextEditingController();
  bool _ismale = true;
  String _modelneuro = 'Medtronic 37702';
  bool _issumcrit = true;
  String _priorityshorttest = LocaleKeys.totalcrit.tr();
  final requiredvalidator =
      RequiredValidator(errorText: LocaleKeys.requiredfield.tr() + '*');
  @override
  void dispose() {
    _numberelectrodes.dispose();
    _phoneCtrl.dispose();
    _fioCtrl.dispose();
    _anamnezCtrl.dispose();
    _levelmaxpainCtrl.dispose();
    _symptoms1Ctrl.dispose();
    _symptoms2Ctrl.dispose();
    _symptoms3Ctrl.dispose();
    _prioritylevelpainCtrl.dispose();
    _maxseatCtrl.dispose();
    _maxmoveCtrl.dispose();
    _maxlieCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            AppColorContainer(
              color: Theme.of(context).colorScheme.tertiary,
              headerbloc: LocaleKeys.patient.tr(),
              widget: Column(
                children: [
                  TextFormField(
                    controller: _fioCtrl,
                    validator: requiredvalidator,
                    minLines: 1,
                    maxLines: 6,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        prefixIconColor: Colors.blueAccent,
                        focusColor: Colors.white,
                        labelText: LocaleKeys.fiopatient.tr(),
                        labelStyle: const TextStyle(fontSize: 16),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(LocaleKeys.sex.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Row(
                          children: [
                            Text(
                              LocaleKeys.fem.tr(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: _ismale ? Colors.grey : Colors.blue),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Transform.scale(
                                scale: 1,
                                child: Switch(
                                  value: _ismale,
                                  onChanged: (value) {
                                    setState(() {
                                      _ismale = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Text(
                              LocaleKeys.mal.tr(),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: !_ismale ? Colors.grey : Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    validator: MultiValidator([
                      requiredvalidator,
                      EmailValidator(errorText: LocaleKeys.enteremail.tr())
                    ]),
                    minLines: 1,
                    maxLines: 6,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        prefixIconColor: Colors.blueAccent,
                        focusColor: Colors.white,
                        labelText: LocaleKeys.email.tr(),
                        labelStyle: const TextStyle(fontSize: 16),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _phoneCtrl,
                    validator: requiredvalidator,
                    keyboardType: TextInputType.phone,
                    minLines: 1,
                    maxLines: 6,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone),
                        prefixIconColor: Colors.blueAccent,
                        focusColor: Colors.white,
                        labelText: LocaleKeys.phone.tr(),
                        labelStyle: const TextStyle(fontSize: 16),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _diagnozCtrl,
                    validator: MultiValidator([
                      requiredvalidator,
                    ]),
                    minLines: 4,
                    maxLines: 6,
                    decoration: InputDecoration(
                        focusColor: Colors.white,
                        labelText: LocaleKeys.diagnoz.tr(),
                        labelStyle: const TextStyle(fontSize: 16),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _anamnezCtrl,
                    validator: requiredvalidator,
                    minLines: 4,
                    maxLines: 15,
                    decoration: InputDecoration(
                        focusColor: Colors.white,
                        labelText: LocaleKeys.anamnesis.tr(),
                        labelStyle: const TextStyle(fontSize: 16),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _levelmaxpainCtrl,
                    validator: MultiValidator([
                      requiredvalidator,
                      RangeValidator(
                          min: 1,
                          max: 10,
                          errorText: LocaleKeys.painmore10.tr())
                    ]),
                    keyboardType: TextInputType.number,
                    minLines: 1,
                    maxLines: 6,
                    decoration: InputDecoration(
                        focusColor: Colors.white,
                        labelStyle: const TextStyle(fontSize: 16),
                        labelText: LocaleKeys.currentpainlevel.tr() + ' : 1-10',
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  AppNameField(namefield: LocaleKeys.currentsymptoms.tr()),
                  Row(
                    children: [
                      Text('1. ',
                          style: Theme.of(context).textTheme.displayLarge),
                      Expanded(
                        child: TextFormField(
                          controller: _symptoms1Ctrl,
                          validator: requiredvalidator,
                          minLines: 1,
                          maxLines: 15,
                          decoration: InputDecoration(
                              focusColor: Colors.white,
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('2. ',
                          style: Theme.of(context).textTheme.displayLarge),
                      Expanded(
                        child: TextFormField(
                          controller: _symptoms2Ctrl,
                          validator: requiredvalidator,
                          minLines: 1,
                          maxLines: 15,
                          decoration: InputDecoration(
                              focusColor: Colors.white,
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('3. ',
                          style: Theme.of(context).textTheme.displayLarge),
                      Expanded(
                        child: TextFormField(
                          controller: _symptoms3Ctrl,
                          minLines: 1,
                          maxLines: 15,
                          decoration: InputDecoration(
                              focusColor: Colors.white,
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppColorContainer(
              color: Theme.of(context).colorScheme.tertiary,
              headerbloc: LocaleKeys.neurostim.tr(),
              widget: Column(
                children: [
                  Text(LocaleKeys.modelneuro.tr(),
                      style: Theme.of(context).textTheme.displayLarge),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: DropdownButtonFormField<String>(
                        style: Theme.of(context).textTheme.displayMedium,
                        decoration: const InputDecoration(
                            enabledBorder: InputBorder.none),
                        dropdownColor: Colors.white,
                        isExpanded: true,
                        value: _modelneuro,
                        iconSize: 24,
                        items: modelneuro.map(bildMenuNeuro).toList(),
                        onChanged: (String? value) =>
                            setState(() => _modelneuro = value!),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppColorContainer(
                color: Theme.of(context).colorScheme.tertiary,
                headerbloc: LocaleKeys.desioncriteria.tr(),
                widget: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      color: Theme.of(context).colorScheme.secondary,
                      child: Text(LocaleKeys.shorttest.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(LocaleKeys.prioritychoice.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 1)),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(choicesol[1],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: _issumcrit
                                          ? Colors.grey
                                          : Colors.blue))),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Transform.scale(
                              scale: 1,
                              child: Switch(
                                value: _issumcrit,
                                onChanged: (value) {
                                  setState(() {
                                    _issumcrit = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                              child: Text(
                            choicesol[0],
                            style: TextStyle(
                                fontSize: 16,
                                color: _issumcrit ? Colors.blue : Colors.grey),
                            textAlign: TextAlign.right,
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      color: Theme.of(context).colorScheme.secondary,
                      child: Text(LocaleKeys.longtest.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(LocaleKeys.maxtimeposition.tr(),
                          style: Theme.of(context).textTheme.displayLarge),
                    ),
                    TextFormField(
                      controller: _maxmoveCtrl,
                      validator: MultiValidator([
                        requiredvalidator,
                        RangeValidator(min: 1, max: 10, errorText: '1-10')
                      ]),
                      keyboardType: TextInputType.number,
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.watch_later_rounded),
                          suffixText: LocaleKeys.hours.tr(),
                          labelText: LocaleKeys.cmove.tr(),
                          labelStyle: const TextStyle(fontSize: 12),
                          focusColor: Colors.white,
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _maxseatCtrl,
                      validator: MultiValidator([
                        requiredvalidator,
                        RangeValidator(min: 1, max: 10, errorText: '1-10')
                      ]),
                      keyboardType: TextInputType.number,
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.watch_later_rounded),
                          suffixText: LocaleKeys.hours.tr(),
                          labelText: LocaleKeys.cseat.tr(),
                          labelStyle: const TextStyle(fontSize: 12),
                          focusColor: Colors.white,
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _maxlieCtrl,
                      validator: MultiValidator([
                        requiredvalidator,
                        RangeValidator(min: 1, max: 10, errorText: '1-10')
                      ]),
                      keyboardType: TextInputType.number,
                      minLines: 1,
                      maxLines: 1,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.watch_later_rounded),
                          suffixText: LocaleKeys.hours.tr(),
                          labelText: LocaleKeys.clie.tr(),
                          labelStyle: const TextStyle(fontSize: 12),
                          focusColor: Colors.white,
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  _formkey.currentState?.save();
                  if (_formkey.currentState != null &&
                      _formkey.currentState!.validate()) {
                    context.read<FeedbackSCSDatabase>().addPatient(
                        false,
                        _fioCtrl.text,
                        _ismale ? LocaleKeys.mal.tr() : LocaleKeys.fem.tr(),
                        _emailCtrl.text,
                        _phoneCtrl.text,
                        _diagnozCtrl.text,
                        _anamnezCtrl.text,
                        int.parse(_levelmaxpainCtrl.text),
                        _symptoms1Ctrl.text,
                        _symptoms2Ctrl.text,
                        _symptoms3Ctrl.text,
                        _modelneuro.toString(),
                        _issumcrit ? choicesol[0] : choicesol[1],
                        int.parse(_levelmaxpainCtrl.text) ~/ 2,
                        int.parse(_maxseatCtrl.text),
                        int.parse(_maxlieCtrl.text),
                        int.parse(_maxmoveCtrl.text));
                    context.read<FeedbackSCSDatabase>().addCurrentTest('probe');
                    _numberelectrodes.clear();
                    _phoneCtrl.clear();
                    _fioCtrl.clear();
                    _anamnezCtrl.clear();
                    _levelmaxpainCtrl.clear();
                    _symptoms1Ctrl.clear();
                    _symptoms2Ctrl.clear();
                    _symptoms3Ctrl.clear();
                    _prioritylevelpainCtrl.clear();
                    _maxseatCtrl.clear();
                    _maxmoveCtrl.clear();
                    _maxlieCtrl.clear();

                    ElegantNotification.success(
                      width: 360,
                      notificationPosition: NotificationPosition.center,
                      animation: AnimationType.fromBottom,
                      onProgressFinished: () => {},
                      description: Text(LocaleKeys.profilepatintfull.tr()),
                      onDismiss: () {},
                    ).show(context);
                  }
                },
                child: Text(LocaleKeys.save.tr(),
                    style: Theme.of(context).textTheme.labelLarge))
          ],
        ));
  }

  DropdownMenuItem<String> bildMenuNeuro(String neuro) => DropdownMenuItem(
        value: neuro,
        child: Text(neuro, style: Theme.of(context).textTheme.displayLarge),
      );
}
