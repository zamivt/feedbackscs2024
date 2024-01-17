import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../../../../providers/ui/doc_patient_mainscreen_provider.dart';

class DocBottomNavigationWidget extends StatefulWidget {
  const DocBottomNavigationWidget({super.key});

  @override
  State<DocBottomNavigationWidget> createState() =>
      _DocBottomNavifationWidgetState();
}

class _DocBottomNavifationWidgetState extends State<DocBottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final position =
        Provider.of<DocPatientMainScreenProvider>(context).position;
    return BottomNavigationBar(
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        onTap: (value) => _onTap(value),
        currentIndex: position,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Theme.of(context).colorScheme.onBackground,
        showSelectedLabels: true,
        showUnselectedLabels: false,

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              label: LocaleKeys.patient.tr(),
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
        ]);
  }

  void _onTap(int index) {
    Provider.of<DocPatientMainScreenProvider>(context, listen: false)
        .setposition(index);
    switch (index) {
      case 0:
        context.go('/doc/patient');
        break;
      case 1:
        context.go('/doc/tasks');
        break;
      case 2:
        context.go('/doc/report');
        break;
      default:
    }
  }
}
