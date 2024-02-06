import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/providers/ui/themeprovider.dart';
import 'package:feedbackscs2024/repository/feedbackscs_database.dart';
import 'package:feedbackscs2024/services/hive_adapter.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'feedback_scs_app.dart';
import 'l10n/classL10n.dart';
import 'providers/ui/doc_patient_mainscreen_provider.dart';
import 'providers/ui/patient_emptymainscreen_provider.dart';
import 'providers/ui/patient_mainscreen_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();

  await Hive.initFlutter(dir.path);
  await HiveAdapter();
  await FeedbackSCSDatabase.initiliase();

  runApp(EasyLocalization(
    supportedLocales: L10n.all,
    path: 'assets/l10n',
    fallbackLocale: L10n.all[0],
    child: MultiProvider(
      providers: [
        //themenotifier
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        //navbarnotifier
        ChangeNotifierProvider(
            create: (context) => PatienEmptytMainScreenProvider()),
        ChangeNotifierProvider(
            create: (context) => PatientMainScreenProvider()),
        ChangeNotifierProvider(
            create: (context) => DocPatientMainScreenProvider()),
        //databasenitier
        ChangeNotifierProvider(create: (context) => FeedbackSCSDatabase()),
      ],
      child: const FeedbackSCSApp(),
    ),
  ));
}
