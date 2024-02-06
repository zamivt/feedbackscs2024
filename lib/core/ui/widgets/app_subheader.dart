import 'package:flutter/material.dart';

class AppSubHeader extends StatelessWidget {
  final Widget widget;
  const AppSubHeader({
    Key? key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        color: Theme.of(context).colorScheme.tertiary,
        child: widget);
  }
}
