import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final String? title;
  final IconData? backIcon;

  const AppBarWidget({
    super.key,
    this.backgroundColor,
    this.title,
    this.backIcon,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return AppBar(
      backgroundColor: backgroundColor ?? colorScheme.secondary,

      title: Text(title!, style: textTheme.headlineSmall),
      leading: GestureDetector(
        onTap: () {
          context.router.pop();
        },
        child: Icon(backIcon, color: colorScheme.onSecondary),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
