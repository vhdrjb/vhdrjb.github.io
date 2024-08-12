import 'package:flutter/widgets.dart';
class ScrollNotifier with ChangeNotifier {


  double startingScroll = 0 ;
  double scrollOffset = 0;

  void updateStartScroll(double startScroll) {
    startingScroll = startScroll;
    notifyListeners();
  }

  void updateScrollOffset(double scrollOffset) {
    this.scrollOffset = scrollOffset;
    notifyListeners();
  }

}