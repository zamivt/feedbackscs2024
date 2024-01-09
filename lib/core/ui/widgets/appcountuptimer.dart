import 'dart:async';
import 'package:flutter/widgets.dart';

enum CountAppTimerFormat {
  hoursMinutesSeconds,
  hoursMinutes,
  hoursOnly,
  minutesSeconds,
  minutesOnly,
  secondsOnly,
}

typedef OnTickCallBack = void Function(Duration remainingTime);

class AppCountUpTimer extends StatefulWidget {
  /// Format for the timer coundtown, choose between different `CountDownTimerFormat`s
  final CountAppTimerFormat format;

  /// Defines the begin time
  final DateTime startTime;

  final DateTime dopstartTime;

  /// Gives you remaining time after every tick.
  final OnTickCallBack? onTick;

  /// Toggle time units descriptions.
  final bool enableDescriptions;

  /// `TextStyle` for the time numbers.
  final TextStyle? timeTextStyle;

  /// `TextStyle` for the colons betwenn the time numbers.
  final TextStyle? colonsTextStyle;

  /// `TextStyle` for the description
  final TextStyle? descriptionTextStyle;

  /// Days unit description.
  final String daysDescription;

  /// Hours unit description.
  final String hoursDescription;

  /// Minutes unit description.
  final String minutesDescription;

  /// Seconds unit description.
  final String secondsDescription;

  /// Defines the width between the colons and the units.
  final double spacerWidth;

  AppCountUpTimer({
    required this.startTime,
    this.format = CountAppTimerFormat.hoursMinutesSeconds,
    required this.dopstartTime,
    this.enableDescriptions = true,
    this.timeTextStyle,
    this.onTick,
    this.colonsTextStyle,
    this.descriptionTextStyle,
    this.daysDescription = "Days",
    this.hoursDescription = "Hours",
    this.minutesDescription = "Minutes",
    this.secondsDescription = "Seconds",
    this.spacerWidth = 10,
  });

  @override
  _AppCountDownTimerState createState() => _AppCountDownTimerState();
}

class _AppCountDownTimerState extends State<AppCountUpTimer> {
  Timer? timer;

  late String countdownHours;
  late String countdownMinutes;
  late String countdownSeconds;
  late Duration difference;

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.dispose();
  }

  /// Calculate the time difference between now end the given [endTime] and initialize all UI timer values.
  ///
  /// Then create a periodic `Timer` which updates all fields every second depending on the time difference which is getting smaller.
  /// When this difference reached `Duration.zero` the `Timer` is stopped and the [onEnd] callback is invoked.
  void _startTimer() {
    if (widget.startTime.isAfter(DateTime.now())) {
      difference = Duration.zero;
    } else {
      difference = widget.startTime.difference(DateTime.now()) -
          widget.dopstartTime.difference(DateTime.now());
    }

    countdownHours = _durationToStringHours(difference);
    countdownMinutes = _durationToStringMinutes(difference);
    countdownSeconds = _durationToStringSeconds(difference);

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      difference = -widget.startTime.difference(DateTime.now()) -
          widget.dopstartTime.difference(DateTime.now());
      widget.onTick?.call(difference);
      setState(() {
        countdownHours = _durationToStringHours(difference);
        countdownMinutes = _durationToStringMinutes(difference);
        countdownSeconds = _durationToStringSeconds(difference);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _countDownTimerFormat();
  }

  /// Builds the UI colons between the time units.
  Widget _colon() {
    return Row(
      children: [
        SizedBox(
          width: widget.spacerWidth,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ":",
              style: widget.colonsTextStyle,
            ),
            if (widget.enableDescriptions)
              SizedBox(
                height: 5,
              ),
            if (widget.enableDescriptions)
              Text(
                "",
                style: widget.descriptionTextStyle,
              ),
          ],
        ),
        SizedBox(
          width: widget.spacerWidth,
        ),
      ],
    );
  }

  /// Builds the timer days with its description.
  Widget _days(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (widget.enableDescriptions)
          SizedBox(
            height: 5,
          ),
        if (widget.enableDescriptions)
          Text(
            widget.daysDescription,
            style: widget.descriptionTextStyle,
          ),
      ],
    );
  }

  /// Builds the timer hours with its description.
  Widget _hours(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          countdownHours,
          style: widget.timeTextStyle,
        ),
        if (widget.enableDescriptions)
          SizedBox(
            height: 5,
          ),
        if (widget.enableDescriptions)
          Text(
            widget.hoursDescription,
            style: widget.descriptionTextStyle,
          ),
      ],
    );
  }

  /// Builds the timer minutes with its description.
  Widget _minutes(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          countdownMinutes,
          style: widget.timeTextStyle,
        ),
        if (widget.enableDescriptions)
          SizedBox(
            height: 5,
          ),
        if (widget.enableDescriptions)
          Text(
            widget.minutesDescription,
            style: widget.descriptionTextStyle,
          ),
      ],
    );
  }

  /// Builds the timer seconds with its description.
  Widget _seconds(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          countdownSeconds,
          style: widget.timeTextStyle,
        ),
        if (widget.enableDescriptions)
          SizedBox(
            height: 5,
          ),
        if (widget.enableDescriptions)
          Text(
            widget.secondsDescription,
            style: widget.descriptionTextStyle,
          ),
      ],
    );
  }

  /// When the selected [CountDownTimerFormat] is leaving out the last unit, this function puts the UI value of the unit before up by one.
  ///
  /// This is done to show the currently running time unit.
  String _twoDigits(int n, String unitType) {
    switch (unitType) {
      case "minutes":
        if (widget.format == CountAppTimerFormat.hoursMinutes ||
            widget.format == CountAppTimerFormat.minutesOnly) {
          if (difference > Duration.zero) {
            n++;
          }
        }
        if (n >= 10) return "$n";
        return "0$n";
      case "hours":
        if (widget.format == CountAppTimerFormat.hoursOnly) {
          if (difference > Duration.zero) {
            n++;
          }
        }
        if (n >= 10) return "$n";
        return "0$n";

      default:
        if (n >= 10) return "$n";
        return "0$n";
    }
  }

  /// Convert [Duration] in hours to String for UI.
  String _durationToStringHours(Duration duration) {
    if (widget.format == CountAppTimerFormat.hoursMinutesSeconds ||
        widget.format == CountAppTimerFormat.hoursMinutes ||
        widget.format == CountAppTimerFormat.hoursOnly) {
      return _twoDigits(duration.inHours, "hours");
    } else
      return _twoDigits(duration.inHours.remainder(24), "hours").toString();
  }

  /// Convert [Duration] in minutes to String for UI.
  String _durationToStringMinutes(Duration duration) {
    if (widget.format == CountAppTimerFormat.minutesSeconds ||
        widget.format == CountAppTimerFormat.minutesOnly) {
      return _twoDigits(duration.inMinutes, "minutes");
    } else
      return _twoDigits(duration.inMinutes.remainder(60), "minutes");
  }

  /// Convert [Duration] in seconds to String for UI.
  String _durationToStringSeconds(Duration duration) {
    if (widget.format == CountAppTimerFormat.secondsOnly) {
      return _twoDigits(duration.inSeconds, "seconds");
    } else
      return _twoDigits(duration.inSeconds.remainder(60), "seconds");
  }

  /// Switches the UI to be displayed based on [CountDownTimerFormat].
  Widget _countDownTimerFormat() {
    switch (widget.format) {
      case CountAppTimerFormat.hoursMinutesSeconds:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _hours(context),
            _colon(),
            _minutes(context),
            _colon(),
            _seconds(context),
          ],
        );
      case CountAppTimerFormat.hoursMinutes:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _hours(context),
            _colon(),
            _minutes(context),
          ],
        );
      case CountAppTimerFormat.hoursOnly:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _hours(context),
          ],
        );
      case CountAppTimerFormat.minutesSeconds:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _minutes(context),
            _colon(),
            _seconds(context),
          ],
        );

      case CountAppTimerFormat.minutesOnly:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _minutes(context),
          ],
        );
      case CountAppTimerFormat.secondsOnly:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _seconds(context),
          ],
        );
      default:
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _days(context),
            _colon(),
            _hours(context),
            _colon(),
            _minutes(context),
            _colon(),
            _seconds(context),
          ],
        );
    }
  }
}
