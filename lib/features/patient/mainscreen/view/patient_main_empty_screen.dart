import 'package:flutter/material.dart';
import '../../help/view/help_page.dart';
import '../../profile/view/profile_page.dart';
import 'widgets/empty_patient_bottom_navigation_widget .dart';

class PatientMainEmptyScreen extends StatefulWidget {
  final Widget child;
  const PatientMainEmptyScreen({super.key, required this.child});

  @override
  State<PatientMainEmptyScreen> createState() => _MainEmptyPageState();
}

class _MainEmptyPageState extends State<PatientMainEmptyScreen> {
  List pages = [const ProfilePage(), const HelpPage()];
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: widget.child,
      bottomNavigationBar: EmptyPatientBottomNavigationWidget(),
    );
  }
}
