import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String header;
  const AppHeader({Key? key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          border: Border.all(
            width: 1,
            color: Theme.of(context).colorScheme.primaryContainer,
          )),
      child: Text(
        header,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
