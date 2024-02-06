import 'package:feedbackscs2024/collections/current_test.dart';
import 'package:feedbackscs2024/features/patient/tasks/tasks_list/view/tasks_list_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../repository/feedbackscs_database.dart';
import 'longtest/view/longtest1.dart';
import 'longtest/view/longtest2.dart';
import 'longtest/view/longtest3.dart';
import 'shorttest/view/shorttest1.dart';
import 'shorttest/view/shorttest2.dart';
import 'shorttest/view/shorttest3.dart';
import 'shorttest/view/shorttest4.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  void initState() {
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readCurrentTest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<FeedbackSCSDatabase>(context, listen: false).readCurrentTest();
    final feedbackSCSDatabase = context.watch<FeedbackSCSDatabase>();
    List<CurrentTest> currenttest = feedbackSCSDatabase.currentTest;

    return (currenttest.isEmpty || currenttest[0].activetask == 'no tasks')
        ? const TasksListPage()
        : currenttest[0].activetask == 'st1'
            ? const ShortTest1()
            : currenttest[0].activetask == 'st2'
                ? const ShortTest2()
                : currenttest[0].activetask == 'st3'
                    ? const ShortTest3()
                    : currenttest[0].activetask == 'st4'
                        ? const ShortTest4()
                        : currenttest[0].activetask == 'lt1'
                            ? const LongTest1()
                            : currenttest[0].activetask == 'lt2'
                                ? const LongTest2()
                                : currenttest[0].activetask == 'lt3'
                                    ? LongTest3()
                                    : Container();
  }
}
