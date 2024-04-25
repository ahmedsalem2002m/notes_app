
import 'package:flutter/material.dart';

import 'custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16
      ),
      child: ListView.builder(
          padding:EdgeInsets.zero,
          itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 4
          ),
          child: NotesItem(),
        );
      }),
    );
  }
}