import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../l10n/locale_keys.g.dart';
import '../../../../doc/patient/controllers/patientempty_mainscreen_controller .dart';

class EmptyPatientBottomNavigationWidget extends ConsumerStatefulWidget {
  const EmptyPatientBottomNavigationWidget({super.key});

  @override
  ConsumerState<EmptyPatientBottomNavigationWidget> createState() =>
      _EmptyPatientBottomNavifationWidgetState();
}

class _EmptyPatientBottomNavifationWidgetState
    extends ConsumerState<EmptyPatientBottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final position = ref.watch(patientemptyMainscreenControllerProvider);
    return BottomNavigationBar(
        iconSize: 30,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        onTap: (value) => _onTap(value),
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

  void _onTap(int index) {
    ref
        .read(patientemptyMainscreenControllerProvider.notifier)
        .setPosition(index);
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
