import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_divider.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:feedbackscs2024/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppDrawer extends ConsumerWidget {
  AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.primary,
                  child: Text(
                    LocaleKeys.settingdrawer.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  )),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                color: Colors.white,
                child: Text(
                  LocaleKeys.changetheme.tr(),
                  style: Theme.of(context).textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              AppDivider(
                ismin: true,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.dark_mode,
                        size: 50,
                        color: !isLightTheme ? Colors.yellow : Colors.grey,
                      ),
                    ),
                    Switch(
                        inactiveThumbColor:
                            Theme.of(context).colorScheme.primary,
                        value: isLightTheme,
                        onChanged: (value) =>
                            ref.read(themeProvider.notifier).state = value),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.light_mode,
                        size: 50,
                        color: isLightTheme ? Colors.yellow : Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
