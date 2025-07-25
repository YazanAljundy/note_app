import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tone_app/cubits/cubit/notes_cubit.dart';
import 'package:tone_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:tone_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSeet();
            },
          );
        },
        backgroundColor: Colors.blueAccent,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
