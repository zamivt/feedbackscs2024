import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/collections/current_test.dart';
import 'package:feedbackscs2024/collections/doc.dart';
import 'package:feedbackscs2024/collections/double_test.dart';
import 'package:feedbackscs2024/collections/patient.dart';
import 'package:feedbackscs2024/collections/placeparestesia_short_test.dart';
import 'package:feedbackscs2024/l10n/classL10n.dart';
import 'package:feedbackscs2024/providers/ui/themeprovider.dart';
import 'package:feedbackscs2024/services/hive_adapter.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'collections/before_test_short_test.dart';
import 'collections/longtest.dart';
import 'collections/reason_finish_long_test.dart';
import 'collections/shorttest.dart';
import 'collections/sideeffects_short_test.dart';
import 'feedback_scs_app.dart';
import 'providers/ui/doc_patient_mainscreen_provider.dart';
import 'providers/ui/patient_emptymainscreen_provider.dart';
import 'providers/ui/patient_mainscreen_provider.dart';
import 'repository/current_patient_provider.dart';

late Isar isar;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();

  await Hive.initFlutter(dir.path);
  await HiveAdapter();

  final dirisar = await getApplicationDocumentsDirectory();
  if (Isar.instanceNames.isEmpty) {
    isar = await Isar.open([
      IPatientSchema,
      IDocPatSchema,
      IBeforeTestSchema,
      DoubleTestSchema,
      CurrentTestSchema,
      IShortTestSchema,
      ILongTestSchema,
      PlaceParestesiaShortTestSchema,
      ReasonFinishLongTestSchema,
      SideEffectsShortTestSchema
    ], directory: dirisar.path, name: 'feedbackSCSInstance');
  }

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
        ChangeNotifierProvider(create: (context) => CurrentPatientProvider()),
      ],
      child: const FeedbackSCSApp(),
    ),
  ));
}
