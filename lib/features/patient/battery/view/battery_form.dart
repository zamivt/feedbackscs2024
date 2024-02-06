import 'package:easy_localization/easy_localization.dart';
import 'package:feedbackscs2024/collections/current_test.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import '../../../../core/ui/widgets/common_widgets.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../../repository/feedbackscs_database.dart';
import '../../../../services/entities/0_battery.dart';
import '../controllers/battery_controllers.dart';

class BatteryForm extends StatefulWidget {
  const BatteryForm({
    Key? key,
  }) : super(key: key);

  @override
  State<BatteryForm> createState() => _BatteryFormState();
}

class _BatteryFormState extends State<BatteryForm> {
  final _reasonCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late DateTime _date = DateTime.now();
  @override
  void initState() {
    super.initState();

    initializeDateFormatting().then((_) => setState(() {}));
  }

  @override
  void dispose() {
    _reasonCtrl.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    final batteryController = Get.find<BatteryControler>();
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<CurrentTest> currenttest = feedbackSCSDatabase.currentTest;

    final DateTime lastchargedate = batteryController.batteries.isEmpty
        ? _date
        : batteryController
            .batteries[batteryController.batteries.length - 1].date;
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Form(
          key: _formKey,
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.primaryContainer,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  LocaleKeys.addcharge.tr(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppTextField(
                  title: LocaleKeys.reasoncharge.tr(),
                  controller: _reasonCtrl,
                  countrow: 3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppHintField(
                  title: LocaleKeys.datecharge.tr(),
                  hint: ((_date.difference(lastchargedate).inDays) >= 0)
                      ? '${DateFormat.d().format(_date)}/${DateFormat.M().format(_date)}/${DateFormat.y().format(_date)}'
                      : '${DateFormat.d().format(lastchargedate)}/${DateFormat.M().format(lastchargedate)}/${DateFormat.y().format(lastchargedate)}',
                  widget: IconButton(
                    onPressed: () {
                      _getDateFromUser();
                    },
                    icon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              ((_date.difference(lastchargedate).inDays) >= 0)
                  ? ElevatedButton(
                      onPressed: () {
                        _formKey.currentState?.save();
                        batteryController.addBattery(
                          Battery(
                            date: _date,
                            note: _reasonCtrl.text,
                            lengbattery: batteryController.batteries.isEmpty
                                ? 0
                                : (_date
                                    .difference(batteryController
                                        .batteries[
                                            batteryController.batteries.length -
                                                1]
                                        .date)
                                    .inDays),
                            summarybattery: batteryController.batteries.isEmpty
                                ? 0
                                : batteryController
                                        .batteries[
                                            batteryController.batteries.length -
                                                1]
                                        .summarybattery! +
                                    (_reasonCtrl.text.isNotEmpty
                                        ? 0
                                        : (_date.difference(batteryController
                                                .batteries[batteryController
                                                        .batteries.length -
                                                    1]
                                                .date))
                                            .inDays),
                            countwithoutcoment: batteryController
                                    .batteries.isEmpty
                                ? 0
                                : batteryController
                                        .batteries[
                                            batteryController.batteries.length -
                                                1]
                                        .countwithoutcoment! +
                                    (_reasonCtrl.text.isNotEmpty ? 0 : 1),
                            teststage: currenttest[0].stage.toString(),
                          ),
                        );
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        LocaleKeys.save.tr(),
                        style: Theme.of(context).textTheme.labelLarge,
                      ))
                  : Container(
                      height: 20,
                    )
            ],
          ),
        ),
      ),
    );
  }

  _getDateFromUser() async {
    final battryController = Get.find<BatteryControler>();
    // ignore: no_leading_underscores_for_local_identifiers
    DateTime? _pickerDate = await showDatePicker(
      context: context,
      initialDate: battryController.batteries.isEmpty
          ? DateTime.now()
          : battryController
              .batteries[battryController.batteries.length - 1].date,
      firstDate: battryController.batteries.isEmpty
          ? DateTime(2020)
          : battryController
              .batteries[battryController.batteries.length - 1].date,
      lastDate: DateTime(2040),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.primaryContainer,
              onPrimary: Colors.white,
              onSurface: Theme.of(context).colorScheme.primary,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (_pickerDate != null) {
      setState(() {
        _date = _pickerDate;

        // ignore: avoid_print
        print(_date);
      });
    } else {
      // ignore: avoid_print
      print('Поле не выбрано');
    }
  }
}
