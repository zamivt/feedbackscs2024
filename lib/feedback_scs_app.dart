import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/providers/ui/themeprovider.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'core/router/go_router.dart';

import 'services/app_controllers.dart';

class FeedbackSCSApp extends StatelessWidget {
  const FeedbackSCSApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(
    BuildContext context,
  ) {
    AppController();

    return MaterialApp.router(
      title: 'FeedbackSCS',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: Provider.of<ThemeProvider>(context).themeData,
      routerConfig: router,
    );
  }
}
