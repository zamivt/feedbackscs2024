import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppNameField extends StatelessWidget {
  late String namefield;
  AppNameField({super.key, required this.namefield});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
      child: Text(
        namefield,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
