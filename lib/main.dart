import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/app_widget.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      enabled: true,
    ),
  );
}
