import 'dart:io';

import 'package:flutter/foundation.dart';

extension PlatformExt on Platform {
  static bool isAndroidApp() => Platform.isAndroid && !kIsWeb;
  static bool isIOSApp() => Platform.isIOS && !kIsWeb;
}
