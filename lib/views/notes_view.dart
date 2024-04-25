import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:(){
        } ,
        child: Icon(
          color: Colors.black,
          Icons.add
        ),
        backgroundColor: Colors.teal
      ),
      body: const NotesViewBody(),
    );
  }
}


