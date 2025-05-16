import 'package:flutter/material.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final double? borderRadius;
  final Widget? icon;
  final TextEditingController controller;

  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.borderRadius,
    this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    // final textTheme = context.textTheme;

    return TextFormField(
      controller: controller,
      style: TextStyle(color: context.colorScheme.onTertiary),
      decoration: InputDecoration(
        fillColor: colorScheme.onSecondary,
        filled: true,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 18),

        hintText: hintText,
        hintStyle: context.textTheme.bodyLarge?.copyWith(
          color: colorScheme.onTertiary,
        ),

        focusColor: colorScheme.error,

        // focusColor: Colors.black,
        // hoverColor: Colors.blue,
        suffixIcon: icon,
        suffixIconConstraints: BoxConstraints(minWidth: 80, maxHeight: 30),
      ),
    );
  }
}
