import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:quick_notes/core/firebase/firebase_auth_service.dart';
import 'package:quick_notes/core/firebase/firebase_firestore_service.dart';
import 'package:quick_notes/features/notes/data/data_source/notes_remote_data_source.dart';
import 'package:quick_notes/features/notes/data/repository_impl/notes_repository_impl.dart';
import 'package:quick_notes/features/notes/domain/respositories/notes_repository.dart';
import 'package:quick_notes/features/notes/domain/usecases/notes_use_cases.dart';
import 'package:quick_notes/features/notes/presentation/bloc/add_notes_bloc/add_notes_bloc.dart';
import 'package:quick_notes/features/notes/presentation/bloc/home_bloc/home_bloc.dart';

class Injector {
  static GetIt injector = GetIt.instance;

  static Future<void> init() async {
    injector
      ..registerSingleton<FirebaseAuthService>(
        FirebaseAuthService(FirebaseAuth.instance),
      )
      ..registerLazySingleton<FirebaseFirestoreService>(
        () => FirebaseFirestoreService(
          firebaseFirestore: FirebaseFirestore.instance,
        ),
      )
      ..registerLazySingleton<NotesRemoteDataSource>(
        () => NotesRemoteDataSourceImpl(
          firebaseFirestoreService: injector<FirebaseFirestoreService>(),
        ),
      )
      ..registerLazySingleton<NotesRepository>(
        () => NotesRepositoryImpl(
          notesRemoteDataSource: injector<NotesRemoteDataSource>(),
        ),
      )
      ..registerLazySingleton<NotesUseCases>(
        () => NotesUseCases(notesRepository: injector<NotesRepository>()),
      )
      ..registerFactory<HomeBloc>(() => HomeBloc(injector<NotesUseCases>()))
      ..registerFactory<AddNotesBloc>(
        () => AddNotesBloc(injector<NotesUseCases>()),
      );
  }
}
