// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class AppPictureContainer extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;
  final String picture;
  final String title;
  final bool isinfo;
  final double? height;
  final bool isResponsible;

  AppPictureContainer(
      {super.key,
      required this.widget1,
      required this.widget2,
      required this.picture,
      required this.title,
      this.height = 270,
      this.isinfo = false,
      this.isResponsible = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: isResponsible ? height : 260,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(picture),
          fit: BoxFit.cover,
        ),
      ),
      child: isinfo
          ? ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widget1,
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.7),
                        ),
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      widget2,
                    ],
                  ))))
          : Center(
              child: Container(
                alignment: Alignment.center,
                height: 70,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
    );
  }
}
