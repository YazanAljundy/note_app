import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tone_app/cubits/cubit/notes_cubit.dart';
import 'package:tone_app/views/widgets/custom_app_bar.dart';
import 'package:tone_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          NotesListView(),
        ],
      ),
    );
  }
}
