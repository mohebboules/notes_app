import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'read_notes_cubit_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesCubitState> {
  ReadNotesCubit() : super(ReadNotesCubitInitial());
  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(ReadNotesCubitSuccess(notesBox.values.toList()));
    } catch (e) {
      emit(ReadNotesCubitIFailure(e.toString()));
    }
  }
}
