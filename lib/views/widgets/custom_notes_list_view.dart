import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemBuilder: (BuildContext context, int index) {
            return const NoteItem();
          },
        ),
      ),
    );
  }
}
