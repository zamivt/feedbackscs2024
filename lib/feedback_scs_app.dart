import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/providers/themeprovider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/go_router.dart';
import 'core/ui/theme/theme.dart';
import 'services/app_controllers.dart';

class FeedbackSCSApp extends ConsumerWidget {
  const FeedbackSCSApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppController();
    final isLightTheme = ref.watch(themeProvider);
    return MaterialApp.router(
      title: 'FeedbackSCS',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: isLightTheme ? TAppTheme.ligtTheme : TAppTheme.darkTheme,
      routerConfig: router,
    );
  }
}
