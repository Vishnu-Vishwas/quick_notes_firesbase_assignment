import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_notes/core/errors.dart';
import 'package:quick_notes/features/notes/domain/entities/notes_entity.dart';
import 'package:quick_notes/features/notes/domain/usecases/notes_use_cases.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NotesUseCases notesUseCases;

  HomeBloc(this.notesUseCases) : super(HomeInitialState()) {
    on<GetAllNotesEvent>(_onGetAllNotes);
  }

  Future<void> _onGetAllNotes(
    GetAllNotesEvent event,
    Emitter<HomeState> emit,
  ) async {
    await emit.forEach<Either<Failure, List<NotesEntity>>>(
      notesUseCases.getAllNotes(),
      onData:
          (either) => either.fold(
            (failure) => HomeErrorState(failure: failure),
            (notes) => HomeLoadedState(notes: notes),
          ),
    );
  }
}
