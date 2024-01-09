import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final bool ismin;
  const AppDivider({super.key, this.ismin = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ismin ? 0 : 5),
      child: Divider(
        height: 10,
        thickness: 2,
        indent: 0,
        endIndent: 0,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
