import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.child,
      required this.onPressed,
      this.icon,
      this.backgroundColor = Colors.blue,
      this.borderRadius = BorderRadius.zero,
      this.height,
      this.width,
      this.disable = false});
  final Widget child;
  final void Function() onPressed;
  final Widget? icon;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final double? height;
  final double? width;
  final bool disable;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          onPressed: disable ? null : onPressed,
          icon: icon!,
          label: child);
    }
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius)),
        onPressed: disable ? null : onPressed,
        child: child);
  }
}
