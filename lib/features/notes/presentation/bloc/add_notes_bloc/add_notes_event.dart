part of 'add_notes_bloc.dart';

sealed class AddNotesEvent extends Equatable {}

final class AddNoteEvent extends AddNotesEvent {
  final String title;
  final String content;
  final Timestamp timestamp;

  AddNoteEvent({
    required this.title,
    required this.content,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [];
}
