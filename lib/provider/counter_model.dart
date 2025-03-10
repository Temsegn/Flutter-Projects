import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CounterModel with ChangeNotifier {
  static const String _countKey = 'count';

  // Hive box
  final Box<int> _counts = Hive.box('counts');

  // Get the count from Hive (or default to 0 if not found)
  int get count => _counts.get(_countKey) ?? 0;

  // Increment the count and save it to Hive
  void increment() {
    _counts.put(_countKey, count + 1);
    notifyListeners(); // Notify listeners to rebuild the UI
  }

  // Decrement the count and save it to Hive
  void decrement() {
    _counts.put(_countKey, count - 1);
    notifyListeners(); // Notify listeners to rebuild the UI
  }
}