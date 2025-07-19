import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tone_app/constants.dart';
import 'package:tone_app/models/note_model.dart';
part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kBoxNotes);
      await noteBox.add(note);
      emit(AddNotesSaccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
