import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/providers/ui/patient_mainscreen_provider.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../../l10n/locale_keys.g.dart';

class PatientBottomNavigationWidget extends StatefulWidget {
  const PatientBottomNavigationWidget({super.key});

  @override
  State<PatientBottomNavigationWidget> createState() =>
      _PatientBottomNavifationWidgetState();
}

class _PatientBottomNavifationWidgetState
    extends State<PatientBottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final position = Provider.of<PatientMainScreenProvider>(context).position;
    return BottomNavigationBar(
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        onTap: (value) => _setPosition(value),
        currentIndex: position,
        selectedItemColor: Theme.of(context).colorScheme.onSurface,
        unselectedItemColor: Theme.of(context).colorScheme.onBackground,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: LocaleKeys.profile.tr(),
              icon: const Icon(FontAwesomeIcons.userLarge)),
          BottomNavigationBarItem(
              label: LocaleKeys.tasks.tr(),
              icon: const Icon(
                FontAwesomeIcons.listCheck,
              )),
          BottomNavigationBarItem(
              label: LocaleKeys.report.tr(),
              icon: const Icon(
                FontAwesomeIcons.chartSimple,
              )),
          BottomNavigationBarItem(
              label: LocaleKeys.charge.tr(),
              icon: const Icon(
                FontAwesomeIcons.batteryHalf,
              )),
          BottomNavigationBarItem(
              label: LocaleKeys.instructions.tr(),
              icon: const Icon(
                FontAwesomeIcons.question,
              )),
        ]);
  }

  void _setPosition(int index) {
    Provider.of<PatientMainScreenProvider>(context, listen: false)
        .setposition(index);
    switch (index) {
      case 0:
        context.go('/patient/profile');
        break;
      case 1:
        context.go('/patient/tasks');
        break;
      case 2:
        context.go('/patient/report');
        break;
      case 3:
        context.go('/patient/battery');
        break;
      case 4:
        context.go('/patient/help');

        break;
      default:
    }
  }
}
