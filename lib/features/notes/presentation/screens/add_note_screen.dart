import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_notes/core/di/injector.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/features/common/presentation/widgets/button_widget.dart';
import 'package:quick_notes/features/common/presentation/widgets/text_form_field_widget.dart';
import 'package:quick_notes/features/notes/presentation/bloc/add_notes_bloc/add_notes_bloc.dart';
import 'package:quick_notes/features/notes/presentation/widgets/app_bar_widget.dart';

@RoutePage()
class AddNoteScreen extends StatelessWidget {
  AddNoteScreen({super.key});

  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return BlocProvider(
      create: (_) => Injector.injector<AddNotesBloc>(),
      child: BlocListener<AddNotesBloc, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesSuccessState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.successMessage)));
            context.router.pop();
          } else if (state is AddNotesFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.failureMessage.errorMessage)),
            );
          }
        },
        // Todo: is it correct to have builder here?
        child: Builder(
          builder: (context) {
            return Scaffold(
              backgroundColor: colorScheme.surface,
              appBar: const AppBarWidget(
                title: TextConstants.addNote,
                backIcon: Icons.arrow_back_ios,
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 40,
                ),
                child: Column(
                  children: [
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
                    ButtonWidget(
                      text: TextConstants.submit,
                      onTap: () {
                        context.read<AddNotesBloc>().add(
                          AddNoteEvent(
                            title: _titleController.text.trim(),
                            content: _contentController.text.trim(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
