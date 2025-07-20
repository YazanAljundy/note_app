import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:tone_app/constants.dart';
import 'package:tone_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kBoxNotes);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesSaccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
