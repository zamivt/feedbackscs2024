// ignore_for_file: avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, must_be_immutable

import 'package:flutter/material.dart';
import '../widgets/bodyblock.dart';

import '../widgets/headerblock.dart';
import '../widgets/mainmenu.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Color(0xff4a1c1e),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            HeaderBloc(),
            MainMenu(tabController: _tabController),
            BodyBlock(tabController: _tabController)
          ]),
        ),
      ),
    );
  }
}
