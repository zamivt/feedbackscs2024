import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/core/ui/widgets/app_divider.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:feedbackscs2024/providers/ui/themeprovider.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
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
                        color: Provider.of<ThemeProvider>(context).isDarkmode
                            ? Colors.yellow
                            : Colors.grey,
                      ),
                    ),
                    CupertinoSwitch(
                        value: Provider.of<ThemeProvider>(context).isDarkmode,
                        onChanged: (value) =>
                            Provider.of<ThemeProvider>(context, listen: false)
                                .toogleTheme()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.light_mode,
                        size: 50,
                        color: Provider.of<ThemeProvider>(context).isDarkmode
                            ? Colors.yellow
                            : Colors.grey,
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
