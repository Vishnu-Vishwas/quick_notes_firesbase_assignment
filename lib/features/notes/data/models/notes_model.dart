import 'package:quick_notes/features/notes/domain/entities/notes_entity.dart';

class NotesModel extends NotesEntity {
  const NotesModel({super.docId, super.title, super.content, super.timestamp});

  factory NotesModel.fromJson(Map<String, dynamic> json) {
    return NotesModel(
      docId: json['docId'],
      title: json['title'],
      content: json['content'],
      timestamp: json['timestamp'],
    );
  }

  factory NotesModel.fromEntity(NotesEntity notesEntity) {
    return NotesModel(
      title: notesEntity.title,
      content: notesEntity.content,
      timestamp: notesEntity.timestamp,
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {'title': title, 'content': content, 'timestamp': timestamp};
  }
}
