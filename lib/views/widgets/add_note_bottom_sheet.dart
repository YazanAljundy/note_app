import 'package:flutter/material.dart';
import 'package:tone_app/views/widgets/custom_button.dart';
import 'package:tone_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSeet extends StatelessWidget {
  const AddNoteBottomSeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hintText: 'title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Write Note', maxLine: 5),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
