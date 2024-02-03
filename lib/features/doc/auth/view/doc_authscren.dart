import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/features/doc/auth/controllers/docpat_controllers.dart';
import 'package:feedbackscs2024/services/entities/data/doc.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/instance_manager.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import '../../../../l10n/locale_keys.g.dart';

class DocAuthMainScreen extends StatefulWidget {
  const DocAuthMainScreen({super.key});

  @override
  State<DocAuthMainScreen> createState() => _DocAuthMainScreenState();
}

class _DocAuthMainScreenState extends State<DocAuthMainScreen> {
  final _loginCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final requiredvalidator =
      RequiredValidator(errorText: '${LocaleKeys.requiredfield.tr()}*');
  final _docpatController = Get.find<DocPatController>();
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(LocaleKeys.enterdoc.tr()),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => {context.goNamed(RouteNames.patientprofile)},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(vertical: 100, horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary),
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _loginCtrl,
                        validator: requiredvalidator,
                        minLines: 1,
                        maxLines: 1,
                        decoration: InputDecoration(
                            focusColor: Colors.white,
                            hintText: LocaleKeys.username.tr(),
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordCtrl,
                        validator: requiredvalidator,
                        minLines: 1,
                        maxLines: 1,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: _toggle,
                              child: Icon(
                                _obscureText
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                            hintText: LocaleKeys.password.tr(),
                            focusColor: Colors.white,
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (docs
                                .where((docs) =>
                                    docs.docid.contains(_loginCtrl.text))
                                .isNotEmpty) {
                              if (docs
                                      .where((docs) =>
                                          docs.docid.contains(_loginCtrl.text))
                                      .map((docs) => docs.password)
                                      .toList()
                                      .first ==
                                  _passwordCtrl.text) {
                                _docpatController.profDocPat(
                                    _loginCtrl.text, DateTime.now());
                                context.pushNamed(RouteNames.docmainpage);
                              } else {
                                showModalBottomSheet(
                                    isDismissible: true,
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                          height: 150,
                                          width: double.infinity,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surfaceTint,
                                          child: Center(
                                              child: Container(
                                                  child: Text(
                                            LocaleKeys.wrongploginpassword.tr(),
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                          ))));
                                    });
                              }
                            } else {
                              showModalBottomSheet(
                                  isDismissible: true,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                        height: 150,
                                        width: double.infinity,
                                        child: Center(
                                            child: Container(
                                                child: Text(
                                          LocaleKeys.invaliduserdata.tr(),
                                          textAlign: TextAlign.center,
                                        ))));
                                  });
                            }
                          },
                          child: Text(
                            LocaleKeys.enter.tr(),
                            style: Theme.of(context).textTheme.labelLarge,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
