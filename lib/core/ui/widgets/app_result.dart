import 'package:flutter/material.dart';

class AppResult extends StatelessWidget {
  final String text;
  final bool isSucces;
  const AppResult({super.key, required this.text, required this.isSucces});

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(border: Border.all(color: AppColors.mainblue)),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 4,
            color: Theme.of(context).colorScheme.primaryContainer,
          )),
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),

      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isSucces ? Colors.green : Color(0xffe5863a),
          fontWeight: FontWeight.w700,
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
