import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/l10n/locale_keys.g.dart';
import 'package:flutter/material.dart';

class AppEmptyWidget extends StatelessWidget {
  final String title;

  AppEmptyWidget({
    super.key,
    this.title = 'nodata',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            color: Theme.of(context).colorScheme.onSurface,
            child: Icon(
              Icons.data_thresholding,
              size: 60,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              (title == 'nodata') ? LocaleKeys.nodate.tr() : title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          )
        ],
      ),
    );
  }
}
