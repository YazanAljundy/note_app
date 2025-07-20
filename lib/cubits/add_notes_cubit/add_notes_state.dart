part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSaccess extends AddNotesState {}

class AddNotesFailure extends AddNotesState {
  final String errMessage;

  AddNotesFailure(this.errMessage);
}
