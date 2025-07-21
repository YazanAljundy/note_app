import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tone_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:tone_app/cubits/cubit/notes_cubit.dart';
import 'package:tone_app/views/widgets/add_note_form.dart';

class AddNoteBottomSeet extends StatelessWidget {
  const AddNoteBottomSeet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {}
          if (state is AddNotesSaccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: const AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
