import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final String linkbutton;

  const AppTextButton(
      {super.key, required this.text, required this.linkbutton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: GestureDetector(
        onTap: () {
          context.pushNamed(linkbutton);
        },
        child: Text(
          text,
          style: TextStyle(
            inherit: true,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Lato',
            letterSpacing: 3,
            color: Theme.of(context).colorScheme.primary,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
