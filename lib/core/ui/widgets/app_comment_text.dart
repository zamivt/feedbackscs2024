import 'package:flutter/material.dart';

class AppCommentText extends StatelessWidget {
  late final String text;

  AppCommentText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(border: Border.all(color: AppColors.mainblue)),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 3,
            color: Theme.of(context).colorScheme.primaryContainer,
          )),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),

      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.italic,
            color: Theme.of(context).colorScheme.onTertiary),
      ),
    );
  }
}
