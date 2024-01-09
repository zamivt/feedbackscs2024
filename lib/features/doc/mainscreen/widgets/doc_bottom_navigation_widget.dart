import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../controllers/doc_mainscreen_controller.dart';

class DocBottomNavigationWidget extends ConsumerStatefulWidget {
  const DocBottomNavigationWidget({super.key});

  @override
  ConsumerState<DocBottomNavigationWidget> createState() =>
      _DocBottomNavifationWidgetState();
}

class _DocBottomNavifationWidgetState
    extends ConsumerState<DocBottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final position = ref.watch(docMainscreenControllerProvider);
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
    ref.read(docMainscreenControllerProvider.notifier).setPosition(index);
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
