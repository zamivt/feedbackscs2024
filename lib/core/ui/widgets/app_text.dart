import 'package:flutter/material.dart';

class AppText1 extends StatelessWidget {
  final double size;
  final String text;
  final bool isdark;
  final bool isbold;
  final bool isaligncenter;
  AppText1({
    super.key,
    this.size = 20,
    this.isbold = false,
    this.isdark = true,
    this.isaligncenter = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isaligncenter ? TextAlign.center : TextAlign.left,
      style: TextStyle(
          color:
              isdark ? Colors.black : Theme.of(context).colorScheme.background,
          fontSize: size,
          fontWeight: isbold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
