import 'package:flutter/material.dart';
import 'package:tone_app/views/widgets/custom_app_bar.dart';
import 'package:tone_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppBar(icon: Icons.check, title: 'Edit Notes'),
          SizedBox(height: 50),
          CustomTextField(hintText: 'title'),
          SizedBox(height: 16),
          CustomTextField(hintText: 'Edit', maxLine: 5),
        ],
      ),
    );
  }
}
