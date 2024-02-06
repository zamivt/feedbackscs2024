import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive/hive.dart';
import '../../../../../services/entities/19_currentlongtask.dart';

class CurrentLongTaskControler extends GetxController {
  late List<CurrentLongTask> _currentlongtasks;
  late Box<CurrentLongTask> curentlongtaskbox;
  List<CurrentLongTask> get currentlongtasks => _currentlongtasks;

  CurrentLongTaskControler() {
    curentlongtaskbox = Hive.box<CurrentLongTask>('currentlongtasks');
    _currentlongtasks = [];
    for (int i = 0; i < curentlongtaskbox.values.length; i++) {
      _currentlongtasks.add(curentlongtaskbox.getAt(i)!);
    }
  }

  addCurrentLongTask(CurrentLongTask currentlongtask) {
    curentlongtaskbox.values.isNotEmpty
        ? {
            _currentlongtasks.setAll(0, [currentlongtask]),
            curentlongtaskbox.putAt(0, currentlongtask),
            update()
          }
        : {
            _currentlongtasks.add(currentlongtask),
            curentlongtaskbox.add(currentlongtask),
            update()
          };
  }

  addStartTestTimeLongTask(DateTime startTestTime) {
    _currentlongtasks[0].begintesttime = startTestTime;
    curentlongtaskbox.putAt(0, _currentlongtasks[0]);
    update();
  }

  addStopTestTimeLongTask(DateTime stopTestTime) {
    _currentlongtasks[0].stoptesttime = stopTestTime;
    curentlongtaskbox.putAt(0, _currentlongtasks[0]);
    update();
  }

  addDurationTestTimeLongTask(int durationTest) {
    _currentlongtasks[0].durationtest = durationTest;
    curentlongtaskbox.putAt(0, _currentlongtasks[0]);
    update();
  }

  addDateSt3(
    String reasonstoptest,
    double markself,
  ) {
    _currentlongtasks[0].reasonstoptest = reasonstoptest;
    _currentlongtasks[0].markself = markself;

    curentlongtaskbox.putAt(0, _currentlongtasks[0]);
    update();
  }
}
