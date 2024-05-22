
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomImageView extends StatelessWidget {
  CustomImageView({this.imagePath,
  this.height,
  this.width,
  this.color,
  this.fit,
  this.alignment,
  this.onTap,
  this.radius,
  this.margin,
  this.border,
    this.placeHolder='assets/images/Staff.png'});
  String? imagePath;
  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(alignment: alignment!, child: _buildWidget())
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: buildCircleImage(),
      ),
    );
  }

  //build image with border radius
  buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: buildImageWithBorder(),
      );
    } else {
      return buildImageWithBorder();
    }
  }

  //build image with border and border radius style
  buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: buildImageView(),
      );
    } else {
      return buildImageView();
    }
  }

  //build image
  buildImageView() {}
}
