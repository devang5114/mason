import 'package:flutter/foundation.dart';

extension ObjExtention on Object {
  void log() {
    if (kDebugMode) {
      print(this);
    }
  }
}
