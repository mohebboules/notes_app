part of 'read_notes_cubit.dart';

@immutable
sealed class ReadNotesCubitState {}

final class ReadNotesCubitInitial extends ReadNotesCubitState {}

final class ReadNotesCubitSuccess extends ReadNotesCubitState {
  final List<NoteModel> notes;

  ReadNotesCubitSuccess(this.notes);
}

final class ReadNotesCubitIFailure extends ReadNotesCubitState {
  final String errorMessage;

  ReadNotesCubitIFailure(this.errorMessage);
}
