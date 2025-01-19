import 'package:flutter/material.dart';
import 'package:kloster/constants/color_schemes.dart';

/// [Button] is a custom button widget that can be used to create a button with
/// custom background color, full width, and onPressed callback.
class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.child,
      this.backgroundColor,
      this.fullWidth,
      required this.onPressed});

  final Widget child;
  final Color? backgroundColor;
  final bool? fullWidth;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(backgroundColor ?? ColorSchemes.primary),
            padding: (fullWidth != null && fullWidth!)
                ? const WidgetStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 12))
                : null,
            minimumSize: (fullWidth != null && fullWidth!)
                ? const WidgetStatePropertyAll(Size.fromHeight(1))
                : null,
            shadowColor: const WidgetStatePropertyAll(Colors.transparent)),
        child: child);
  }
}
