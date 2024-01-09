import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AppHintField extends StatelessWidget {
  final String title;
  final String? hint;
  final int? countrow;
  final TextEditingController? controller;
  final Widget? widget;

  const AppHintField(
      {Key? key,
      required this.title,
      this.hint,
      this.controller,
      this.widget,
      this.countrow})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          padding: const EdgeInsets.only(left: 14),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: widget == null ? false : true,
                  autofocus: false,
                  cursorColor:
                      Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                  controller: controller,
                  style: Theme.of(context).textTheme.displayLarge,
                  minLines: countrow == null ? 1 : countrow!,
                  maxLines: 15,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: Theme.of(context).textTheme.displayLarge,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.background,
                            width: 0)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.background,
                            width: 0)),
                  ),
                ),
              ),
              widget == null
                  ? Container()
                  : Container(
                      child: widget,
                    )
            ],
          ),
        )
      ]),
    );
  }
}
