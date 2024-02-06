import 'package:flutter/material.dart';

import '../widgets/doc_bottom_navigation_widget.dart';

class DocMainScreen extends StatefulWidget {
  final Widget child;
  const DocMainScreen({super.key, required this.child});

  @override
  State<DocMainScreen> createState() => _DocMainScreenState();
}

class _DocMainScreenState extends State<DocMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: widget.child,
      bottomNavigationBar: const DocBottomNavigationWidget(),
    );
  }
}
