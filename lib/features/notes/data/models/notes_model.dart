import 'package:cloud_firestore/cloud_firestore.dart';
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

  // from snapshot
  factory NotesModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data()! ?? {};
    return NotesModel(
      docId: doc.id,
      title: data['title'] ?? "",
      content: data['content'] ?? "",
      timestamp: data['timestamp'] ?? "",
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {'title': title, 'content': content, 'timestamp': timestamp};
  }
}
