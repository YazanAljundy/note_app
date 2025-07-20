import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tone_app/cubits/cubit/notes_cubit.dart';
import 'package:tone_app/models/note_model.dart';
import 'package:tone_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              reverse: true,
              controller: ScrollController(),
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: NoteItem(note: notes[index]),
                  ),
            ),
          );
        },
      ),
    );
  }
}
