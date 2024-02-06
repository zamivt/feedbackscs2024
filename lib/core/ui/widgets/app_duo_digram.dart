import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AppDuoDiagram extends StatelessWidget {
  final String content;
  final int countcontent;

  final int nocountcontent;
  const AppDuoDiagram(
      {super.key,
      required this.content,
      required this.countcontent,
      required this.nocountcontent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.primary,
          spreadRadius: 4,
          blurRadius: 8,
          offset: const Offset(0, 1),
        ),
      ]),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(content,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(nocountcontent.toString(),
                    style: Theme.of(context).textTheme.displayLarge),
                Text('/', style: Theme.of(context).textTheme.displayLarge),
                Text(countcontent.toString(),
                    style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GFProgressBar(
                    clipLinearGradient: true,
                    percentage: nocountcontent / countcontent,
                    lineHeight: 20,
                    animation: true,
                    backgroundColor: Theme.of(context).colorScheme.surfaceTint,
                    progressBarColor: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
