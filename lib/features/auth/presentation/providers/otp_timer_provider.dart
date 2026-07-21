import 'dart:async';

import 'package:flutter/material.dart';

class OtpTimerProvider extends ChangeNotifier {
  final int secondsForResendOtp;
  int _secondsLeft = 0;
  Timer? _timer;
  
  OtpTimerProvider( this.secondsForResendOtp) : _secondsLeft = secondsForResendOtp;
  int get secondsLeft => _secondsLeft;

  void startTimer() {
    _timer?.cancel();
    _secondsLeft = secondsForResendOtp;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsLeft ==1) {
        _timer?.cancel();
        _secondsLeft=0;
      } else {
        _secondsLeft--;

      }
      notifyListeners();
    });
  }

  void stopTimer() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}