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
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),

      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.italic,
            color: Theme.of(context).colorScheme.onTertiary),
      ),
    );
  }
}
