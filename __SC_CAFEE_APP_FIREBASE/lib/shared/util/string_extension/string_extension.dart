import 'package:hyper_ui/core.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String get currency {
    return NumberFormat().format(this);
  }
}

extension NumExtension on num {
  String get currency {
    return NumberFormat().format(this);
  }
}
