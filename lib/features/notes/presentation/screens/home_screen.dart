import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_notes/core/constants/text_constants.dart';
import 'package:quick_notes/core/di/injector.dart';
import 'package:quick_notes/core/extensions/context_extension.dart';
import 'package:quick_notes/core/navigation/app_router.dart';
import 'package:quick_notes/features/notes/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:quick_notes/features/notes/presentation/widgets/list_tile_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.secondary,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: colorScheme.secondary,
        title: Text(TextConstants.quickNotes, style: textTheme.headlineSmall),
      ),
      body: BlocProvider<HomeBloc>(
        create: (_) => Injector.injector<HomeBloc>()..add(GetAllNotesEvent()),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            switch (state) {
              case HomeInitialState():
                return const Center(child: CircularProgressIndicator());
              case HomeLoadedState():
                // print("Length of the notes is: ${state.notes.length}");
                final notes = state.notes;

                return ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),

                  itemCount: notes.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    final note = notes[index];

                    return GestureDetector(
                      onTap: () {
                        context.router.push(NoteDetailsRoute(note: note));
                      },
                      child: ListTileWidget(
                        title: note.title,
                        content: note.content,
                        timestamp: note.timestamp,
                      ),
                    );
                  },
                );
              case HomeErrorState():
                return Center(child: Text(state.failure.errorMessage));
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorScheme.surface,
        onPressed: () {
          context.router.push(AddNoteRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
