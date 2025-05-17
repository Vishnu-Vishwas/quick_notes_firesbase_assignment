part of 'add_notes_bloc.dart';

sealed class AddNotesEvent extends Equatable {}

final class AddNoteEvent extends AddNotesEvent {
  final String title;
  final String content;

  AddNoteEvent({required this.title, required this.content});

  @override
  List<Object?> get props => [title, content];
}
