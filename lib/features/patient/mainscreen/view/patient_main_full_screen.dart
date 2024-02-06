import 'package:flutter/material.dart';
import 'widgets/patient_bottom_navigation_widget.dart';

class PatientMainFullScreen extends StatefulWidget {
  final Widget child;
  const PatientMainFullScreen({super.key, required this.child});

  @override
  State<PatientMainFullScreen> createState() => _MainFulPageState();
}

class _MainFulPageState extends State<PatientMainFullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: widget.child,
      bottomNavigationBar: const PatientBottomNavigationWidget(),
    );
  }
}
