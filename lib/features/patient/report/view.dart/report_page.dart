import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/report_long_test.dart';
import '../widgets/report_short_test.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [Header(), Report_short_test(), Report_Long_test()],
          ),
        ),
      ),
    );
  }
}
