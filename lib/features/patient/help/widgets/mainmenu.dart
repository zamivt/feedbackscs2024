import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../l10n/locale_keys.g.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Align(
        alignment: Alignment.center,
        child: TabBar(
            unselectedLabelStyle: TextStyle(fontSize: 16, color: Colors.white),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            controller: _tabController,
            labelColor: Theme.of(context).colorScheme.onSurface,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Theme.of(context).colorScheme.secondary,
            indicatorWeight: 2,
            tabs: [
              Tab(
                text: LocaleKeys.principies.tr(),
              ),
              Tab(
                text: LocaleKeys.program.tr(),
              ),
              Tab(
                text: LocaleKeys.stimulator.tr(),
              ),
            ]),
      ),
    );
  }
}
