import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/collections/doc.dart';
import 'package:feedbackscs2024/collections/longtest.dart';
import 'package:feedbackscs2024/collections/placeparestesia_short_test.dart';
import 'package:feedbackscs2024/collections/reason_finish_long_test.dart';
import 'package:feedbackscs2024/collections/shorttest.dart';
import 'package:feedbackscs2024/collections/sideeffects_short_test.dart';
import 'package:feedbackscs2024/services/hive_adapter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'collections/patient.dart';
import 'feedback_scs_app.dart';
import 'l10n/classL10n.dart';

late Isar isar;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Directory dir = await getApplicationDocumentsDirectory();

  await Hive.initFlutter(dir.path);
  await HiveAdapter();
  final dirisar = await getApplicationDocumentsDirectory();
  if (Isar.instanceNames.isEmpty) {
    // ignore: unused_local_variable
    final isar = await Isar.open([
      IPatientSchema,
      IDocPatSchema,
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
      child: const ProviderScope(child: FeedbackSCSApp())));
}
