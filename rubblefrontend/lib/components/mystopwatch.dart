// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mycolors.dart';

class MyStopWatch extends StatefulWidget {
  const MyStopWatch({super.key});

  @override
  _MyStopWatchState createState() => _MyStopWatchState();
}

class _MyStopWatchState extends State<MyStopWatch> {
  Duration duration = const Duration();
  Timer? timer;

  bool countDown = true;

  @override
  void initState() {
    super.initState();
    //reset();
    startTimer();
  }

  void reset() {
    setState(() => duration = const Duration());
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    const addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) => Center(
        child: buildTime(),
      );

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes);
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Text(
      "$minutes:$seconds",
      style: TextStyle(fontSize: 36, color: yellowButton),
    );
  }
}
