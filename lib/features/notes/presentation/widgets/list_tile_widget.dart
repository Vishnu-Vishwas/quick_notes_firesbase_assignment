import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';

class ListTileWidget extends StatelessWidget {
  final String? title;
  final String? content;
  final Timestamp? timestamp;

  const ListTileWidget({super.key, this.title, this.content, this.timestamp});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return ListTile(
      selected: false,
      tileColor: colorScheme.surface,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

      title: Text(title!),
      titleTextStyle: textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
      ),

      subtitle: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content!,
            style: textTheme.bodyLarge?.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
          ),

          Text(
            timestamp.toString(),
            style: textTheme.bodySmall?.copyWith(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
