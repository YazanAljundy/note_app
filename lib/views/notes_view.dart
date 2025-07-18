import 'package:flutter/material.dart';
import 'package:tone_app/views/widgets/ass_note_bottom_sheet.dart';
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
            context: context,
            builder: (context) {
              return AddNoteBottomSeet();
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
