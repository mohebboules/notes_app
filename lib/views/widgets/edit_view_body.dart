import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
        ),
        SizedBox(
          height: 50,
        ),
        CustomTextField(hintText: 'Title'),
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          hintText: 'Content',
          maxLines: 5,
        ),
      ],
    );
  }
}
