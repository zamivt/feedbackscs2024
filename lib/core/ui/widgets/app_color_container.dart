// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AppColorContainer extends StatelessWidget {
  final Color color;
  final double width;

  final bool islink;
  final String headerbloc;
  final Widget widget;
  final bool isminpadding;
  String link;
  AppColorContainer({
    Key? key,
    required this.color,
    required this.headerbloc,
    this.width = double.maxFinite,
    required this.widget,
    this.islink = false,
    this.link = '',
    this.isminpadding = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      child: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: islink ? 0 : 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: Text(
                      headerbloc,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                islink
                    ? IconButton(
                        color: Colors.white,
                        iconSize: 15,
                        onPressed: () {
                          context.goNamed('doc/auth');
                        },
                        icon: const Icon(FontAwesomeIcons.rightFromBracket))
                    : Container(
                        height: 15,
                      )
              ],
            ),
          ),
        ),
        Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(isminpadding ? 0 : 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
            child: widget)
      ]),
    );
  }
}
