import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../../providers/ui/patient_emptymainscreen_provider.dart';

class EmptyPatientBottomNavigationWidget extends StatefulWidget {
  const EmptyPatientBottomNavigationWidget({super.key});

  @override
  State<EmptyPatientBottomNavigationWidget> createState() =>
      _EmptyPatientBottomNavifationWidgetState();
}

class _EmptyPatientBottomNavifationWidgetState
    extends State<EmptyPatientBottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    int position =
        Provider.of<PatienEmptytMainScreenProvider>(context).position;

    return BottomNavigationBar(
        iconSize: 30,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        onTap: (value) => _setPosition(value),
        currentIndex: position,
        selectedItemColor: Theme.of(context).colorScheme.onSurface,
        unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        useLegacyColorScheme: false,

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              label: LocaleKeys.profile.tr(),
              icon: const Icon(FontAwesomeIcons.userLarge)),
          BottomNavigationBarItem(
              label: LocaleKeys.instructions.tr(),
              icon: const Icon(
                FontAwesomeIcons.question,
              )),
        ]);
  }

  void _setPosition(int index) {
    Provider.of<PatienEmptytMainScreenProvider>(context, listen: false)
        .setposition(index);

    switch (index) {
      case 0:
        context.go('/patientempty/profile');
        break;
      case 1:
        context.go('/patientempty/help');
        break;

      default:
    }
  }
}
