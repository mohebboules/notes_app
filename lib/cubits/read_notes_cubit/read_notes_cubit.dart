import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'read_notes_cubit_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesCubitState> {
  ReadNotesCubit() : super(ReadNotesCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(ReadNotesCubitSuccess());
  }
}
