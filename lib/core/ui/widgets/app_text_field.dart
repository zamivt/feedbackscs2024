import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  final String title;

  final int? countrow;
  final TextEditingController? controller;
  final Widget? widget;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  final bool isText;
  final bool isCaps;
  final bool istitle;

  const AppTextField(
      {Key? key,
      required this.title,
      this.controller,
      this.widget,
      this.countrow,
      this.inputFormatters,
      this.validator,
      this.isText = true,
      this.isCaps = false,
      this.istitle = true})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Container(
          margin: const EdgeInsets.only(top: 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            istitle
                ? Text(title, style: Theme.of(context).textTheme.displayLarge)
                : Container(),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              padding: const EdgeInsets.only(left: 14),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                border: Border.all(color: Colors.grey, width: 2.0),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  widget == null
                      ? Container()
                      : Container(
                          child: widget,
                        ),
                  Expanded(
                    child: TextFormField(
                      readOnly: widget == null ? false : true,
                      autofocus: false,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      cursorColor: Colors.black,
                      textCapitalization: !isCaps
                          ? TextCapitalization.none
                          : TextCapitalization.characters,
                      controller: controller,
                      inputFormatters: inputFormatters,
                      minLines: countrow == null ? 1 : countrow!,
                      textInputAction: TextInputAction.next,
                      validator: validator,
                      keyboardType:
                          isText ? TextInputType.text : TextInputType.number,
                      maxLines: 15,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 0)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                width: 0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
