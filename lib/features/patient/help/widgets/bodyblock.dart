import 'package:flutter/material.dart';

import 'neurostim.dart';
import 'principies.dart';
import 'program.dart';

class BodyBlock extends StatelessWidget {
  const BodyBlock({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.75,
      width: double.maxFinite,
      color: Theme.of(context).colorScheme.background,
      //Theme.of(context).colorScheme.onPrimaryContainer,
      child: TabBarView(controller: _tabController, children: [
        Principies(),
        Program(),
        Neurostim(),
      ]),
    );
  }
}
