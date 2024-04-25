import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_notes_bottomsheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:(){showModalBottomSheet(context: context, builder: (context){
          return const AddNotesBottomSheet();
        });} ,
        backgroundColor: Colors.teal,
        child: const Icon(
          color: Colors.black,
          Icons.add
        )
      ),
      body: const NotesViewBody(),
    );
  }
}






