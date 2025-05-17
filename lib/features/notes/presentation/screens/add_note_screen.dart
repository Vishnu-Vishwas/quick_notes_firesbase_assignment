import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/features/common/presentation/widgets/button_widget.dart';
import 'package:quick_notes/features/common/presentation/widgets/text_form_field_widget.dart';
import 'package:quick_notes/features/notes/presentation/widgets/app_bar_widget.dart';

@RoutePage()
class AddNoteScreen extends StatelessWidget {
  AddNoteScreen({super.key});

  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: const AppBarWidget(
        title: TextConstants.addNote,
        backIcon: Icons.arrow_back_ios,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          children: [
            // Title field
            TextFormFieldWidget(
              hintText: TextConstants.enterTitle,
              controller: _titleController,
            ),
            const SizedBox(height: 20),
            TextFormFieldWidget(
              hintText: TextConstants.enterContent,
              controller: _contentController,
            ),

            const SizedBox(height: 40),
            ButtonWidget(text: TextConstants.submit, onTap: () {}),
          ],
        ),
      ),
    );
  }
}
