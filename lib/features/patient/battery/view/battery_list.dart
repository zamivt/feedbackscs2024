import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../controllers/battery_controllers.dart';
import 'battery_form.dart';

class BatteryList extends StatefulWidget {
  const BatteryList({Key? key}) : super(key: key);

  @override
  State<BatteryList> createState() => _BatteryListState();
}

class _BatteryListState extends State<BatteryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(LocaleKeys.diarybattery.tr()),
        centerTitle: true,
        foregroundColor: Colors.white,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SizedBox(
        height: double.infinity,
        child: GetBuilder(
          builder: (BatteryControler batteryController) {
            return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: batteryController.batteries.length,
                primary: false,
                itemBuilder: ((context, index) {
                  return Card(
                    color: batteryController.batteries[index].note.isEmpty
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.surfaceTint,
                    shadowColor: Colors.grey[400],
                    elevation: 10,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                      leading: (index == batteryController.batteries.length - 1)
                          ? IconButton(
                              color: (batteryController
                                          .batteries[index].lengbattery)! <
                                      0
                                  ? Colors.red
                                  : Theme.of(context).colorScheme.primary,
                              onPressed: () {
                                batteryController.deleteBattery(
                                    batteryController.batteries[index]);
                              },
                              icon: const Icon(Icons.delete))
                          : Container(
                              width: 50,
                            ),
                      trailing: (batteryController
                                  .batteries[index].lengbattery)! <
                              0
                          ? Container(
                              width: 60,
                              height: double.infinity,
                              alignment: Alignment.center,
                              color: Colors.red,
                              child: Text(
                                'Дата  \n зарядки \n неверна',
                                style: Theme.of(context).textTheme.displayLarge,
                              ))
                          : Container(
                              width: 40,
                              height: 40,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              alignment: Alignment.center,

                              child: Text(
                                (index + 1).toString(),
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                      title: Container(
                        // padding: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, style: BorderStyle.solid))),
                        child: Text(
                            // ignore: prefer_interpolation_to_compose_strings
                            batteryController.batteries[index].note.isEmpty
                                ? DateFormat.d().format(batteryController
                                        .batteries[index].date) +
                                    ' / ' +
                                    DateFormat.M().format(batteryController
                                        .batteries[index].date) +
                                    ' / ' +
                                    DateFormat.y().format(
                                        batteryController.batteries[index].date)
                                : DateFormat.d().format(batteryController
                                        .batteries[index].date) +
                                    ' / ' +
                                    DateFormat.M().format(batteryController
                                        .batteries[index].date) +
                                    '/' +
                                    DateFormat.y().format(batteryController
                                        .batteries[index].date) +
                                    '\n' +
                                    batteryController.batteries[index].note,
                            style: Theme.of(context).textTheme.displayLarge),
                      ),
                      subtitle: Container(
                        width: double.infinity,
                        //color: Colors.amber,
                        child: Text(
                          LocaleKeys.daycharge.tr() +
                              batteryController.batteries[index].lengbattery
                                  .toString(),
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                    ),
                  );
                }));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {
          showModalBottomSheet(
              isDismissible: true,
              context: context,
              builder: (context) {
                return const BatteryForm();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
