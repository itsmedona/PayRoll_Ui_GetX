import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  BaseButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.isDisabled,
    this.height,
    this.width,
    this.margin,
    this.alignment,
    this.buttonTextStyle, 
  });

  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final bool? isDisabled;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final Alignment? alignment;
  final TextStyle? buttonTextStyle; 

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
