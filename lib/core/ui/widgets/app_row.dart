import 'package:flutter/material.dart';

class AppRow extends StatelessWidget {
  final String headerrow;
  final String bodyrow;
  final bool ishidden;
  AppRow(
      {Key? key,
      required this.headerrow,
      required this.bodyrow,
      this.ishidden = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child:
                Text(headerrow, style: Theme.of(context).textTheme.titleSmall),
          ),
          Text(bodyrow, style: Theme.of(context).textTheme.titleSmall),
          ishidden
              ? Icon(
                  Icons.visibility_off,
                  color: Colors.blueGrey,
                )
              : SizedBox(width: 1)
        ],
      ),
    );
  }
}
