// Used in the code as a reference to create UI responsively

import 'package:flutter/material.dart';

const num FIGMA_DESIGN_WIDTH = 390;
const num FIGMA_DESIGN_HEIGHT = 844;
const num FIGMA_DESIGN_STATUS_BAR = 0;

extension ResponsiveExtension on num {
  double get _width => SizeConstants.width;
  double get _height => SizeConstants.height;
  double get h => ((this * _width) / FIGMA_DESIGN_WIDTH);
  double get v =>
      (this * _height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR);
  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDouble() : width.toDouble();
  }

  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }

typedef ResponsiveBuild = Widget Function(
    BuildContext context, Orientation orientation, DeviceType deviceType);

class Sizer extends StatelessWidget {
  const Sizer({Key? key, required this.builder}) : super(key: key);

  final ResponsiveBuild builder;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget build(BuildContext context) {
  return LayoutBuilder(builder: (context, constraints) {
    return OrientationBuilder(builder: (context, orientation) {
      SizeConstants.setScreenSize(constraints, orientation);
      return builder(context, orientation, SizeConstants.deviceType);
    });
  });
}

builder(BuildContext context, Orientation orientation, DeviceType deviceType) {}

class SizeConstants {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double height;
  static late double width;
  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    boxConstraints = constraints;
    orientation = currentOrientation;
    if (orientation == Orientation.portrait) {
      width =
          boxConstraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNonZero();
    } else {
      width =
          boxConstraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxWidth.isNonZero();
    }
    deviceType = DeviceType.mobile;
  }
}
