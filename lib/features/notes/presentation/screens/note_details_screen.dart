import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';
import 'package:quick_notes/core/utils/format_timestamp.dart';
import 'package:quick_notes/features/notes/domain/entities/notes_entity.dart';
import 'package:quick_notes/features/notes/presentation/widgets/app_bar_widget.dart';

@RoutePage()
class NoteDetailsScreen extends StatelessWidget {
  final NotesEntity note;

  const NoteDetailsScreen({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: const AppBarWidget(
        title: TextConstants.noteDetails,
        backIcon: Icons.arrow_back_ios,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(note.title!, style: textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(
              FormatTimeStamp.formatTimeStamp(note.timestamp!),
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            Text(note.content!, style: textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
