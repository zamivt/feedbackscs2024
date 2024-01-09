import 'package:flutter/material.dart';

class AppSmallDivider extends StatelessWidget {
  const AppSmallDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 10,
      thickness: 2,
      indent: 0,
      endIndent: 0,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
