import 'package:flutter/material.dart';
import 'package:quick_notes/core/constants/app_colors.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final double? fontSize;
  final double? borderRadius;
  final VoidCallback onTap;
  final bool? requireBorder;

  final double? horizontalPadding;
  final double? verticlePadding;

  const ButtonWidget({
    super.key,
    required this.text,
    this.buttonColor,
    this.textColor = AppColors.white,
    this.fontSize,
    this.borderRadius,
    required this.onTap,
    this.horizontalPadding,
    this.verticlePadding,
    this.requireBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          buttonColor ?? colorScheme.primary,
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 90.0,
            vertical: verticlePadding ?? 20,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),

        elevation: const WidgetStatePropertyAll(6),

        // todo: is this logic correct?
        side:
            requireBorder!
                ? WidgetStatePropertyAll(
                  BorderSide(color: colorScheme.onSecondary, width: 0.5),
                )
                : null,
      ),
      child: Text(
        text,
        style: textTheme.headlineSmall?.copyWith(
          color: textColor ?? colorScheme.onSecondary,
          fontSize: fontSize ?? 24,
        ),
      ),
    );
  }
}
