import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  //? Data
  int counter = 0;

  //? Functions
  void increase() {
    counter++;

    // Tell Widget for new state with new value
    notifyListeners();
  }

}
