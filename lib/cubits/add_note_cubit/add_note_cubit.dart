import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part  'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit() : super(AddNoteInitial());

}