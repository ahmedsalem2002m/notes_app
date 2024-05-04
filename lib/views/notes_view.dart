import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_notes_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                context: context,
                builder: (context) {
                  return const AddNotesBottomSheet();
                });
          },
          backgroundColor: kPrimaryColor,
          child: const Icon(
              color: Colors.black,
              Icons.add
          )
      ),
      body: const NotesViewBody(),
    );
  }
}






