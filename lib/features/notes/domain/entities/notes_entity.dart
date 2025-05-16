import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class NotesEntity extends Equatable {
  final String? docId;
  final String? title;
  final String? content;
  final Timestamp? timestamp;

  const NotesEntity({this.docId, this.title, this.content, this.timestamp});

  @override
  List<Object?> get props => [docId, title, content, timestamp];
}
