import 'package:flutter/material.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';

class CheckBoxWidget extends StatelessWidget {
  final bool? value;
  const CheckBoxWidget({super.key, this.value = false});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    // final textTheme = context.textTheme;

    return SizedBox(
      // width: MediaQuery.sizeOf(context).width * 0.1,
      child: Checkbox(
        value: value,
        onChanged: (value) {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        fillColor: WidgetStatePropertyAll(colorScheme.onSecondary),

        // activeColor: AppColors.black,
        checkColor: colorScheme.onTertiary,
        splashRadius: 15,

        // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
