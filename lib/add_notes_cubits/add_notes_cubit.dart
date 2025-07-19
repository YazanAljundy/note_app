import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial as NotesState);
}
