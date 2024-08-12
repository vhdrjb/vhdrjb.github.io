import 'dart:math';

import 'package:flutter/material.dart';

import 'scroll_notifier.dart';

class PageNotifier {
  static PageNotifier? _instance;
  final Map<int,ScrollNotifier> _listeners = {};
  int index= 0;
  double width = 0;
  final Map<int,double> _thresholds = {
    0:400,
    1:400,
    2:400,
    3:400,
  };
  static PageNotifier get instance {
    _instance ??= PageNotifier._();
    return _instance!;
  }


  PageNotifier._();

  void updateWidth(double width) {
    this.width = width;
    _thresholds[0] = width/2;
  }

  void updateCurrentIndex(int index) {
    this.index = index;
  }

  void updateStartScroll(double startScroll) {
    _listeners[index]?.updateStartScroll(startScroll);
  }

  void updateScrollOffset(double scrollOffset) {
    _listeners[index]?.updateScrollOffset(min(scrollOffset,_thresholds[index]!));
  }



  ScrollNotifier listen(int index) {
    if (!_listeners.containsKey(index)) {
      _listeners[index] = ScrollNotifier();
    }
    return _listeners[index]!;
  }
}
