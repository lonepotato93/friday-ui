import 'package:flutter/material.dart';

class DeviceUtils {
  static void printDeviceDimensions(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;
    final physicalSize = size * pixelRatio;

    debugPrint('Device Dimensions:');
    debugPrint(
      'Logical Size: ${size.width.toStringAsFixed(2)} x ${size.height.toStringAsFixed(2)}',
    );
    debugPrint(
      'Physical Size: ${physicalSize.width.toStringAsFixed(2)} x ${physicalSize.height.toStringAsFixed(2)}',
    );
    debugPrint('Pixel Ratio: $pixelRatio');
  }

  static Size getDeviceSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getDevicePixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }
}
